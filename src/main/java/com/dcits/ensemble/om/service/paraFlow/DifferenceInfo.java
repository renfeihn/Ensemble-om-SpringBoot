package com.dcits.ensemble.om.service.paraFlow;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.Map;

/**
 * Created by ligan on 2018/8/27.
 */
@Service
public class DifferenceInfo {
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    private ProcessCombManagement processCombManagement;
    private String optionType;
    private String prodType;
    private String eventType;
    private String eventTypeNo;
    private String eventPartNo;
    private String eventAttrNo;
    //记录产品流程信息
   public void insertProdDifferenceInfo(Map mbProdInfo,String reqNo){
       String operatorNo= omProcessDetailHistRepository.findBySeqNoMax(reqNo)==null?"1": omProcessDetailHistRepository.findBySeqNoMax(reqNo);
       //1判断上送数据是否有修改操作
       //2记录组合表信息（被修改的表）
       //3变更信息以blob形式存入表
          //产品
       this.optionType=(String)mbProdInfo.get("optionType");
       prodTran((Map) mbProdInfo.get("prodType"), reqNo, operatorNo);

       //产品参数
       prodDefineTran(ResourcesUtils.getMap(mbProdInfo.get("prodDefines")), reqNo, operatorNo);
       Map eventInfo=(Map) mbProdInfo.get("mbEventInfos");
       if(eventInfo==null){
           return;
       }
     eventTypeNo=null;
     eventPartNo=null;
     eventAttrNo=null;
     for (Object key : eventInfo.keySet()) {
         Map<String,Map> eventOne=(Map)eventInfo.get(key);
         String eventType=(String)key;
         //如果操作类型为复制则事件名字以新的产品类型为名
         if("I".equals(this.optionType)){
             eventType=  eventType.substring(0,eventType.indexOf("_")+1)+this.prodType;
         }
         this.eventType=eventType;
         eventTypeTran(ResourcesUtils.getMap(eventOne.get("mbEventType")), reqNo, operatorNo);
         eventAttrTran(ResourcesUtils.getMap(eventOne.get("mbEventAttrs")), reqNo, operatorNo);
         eventPartTran(ResourcesUtils.getMap(eventOne.get("mbEventParts")), reqNo, operatorNo);
     }

   }

    //事件指标
    public void eventPartTran(Map prodMap,String seqNo,String operatorNo){
            if(prodMap.size()>0) {
                //记录组合
                this.eventPartNo = this.eventPartNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_EVENT_PART"):this.eventPartNo;
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", this.eventType);
                for(Object key:prodMap.keySet()) {
                    Map<String, Object> eventOne = (Map) prodMap.get(key);
                    keyValue.put("ASSEMBLE_ID", key);
                        for(Object keyAttr:eventOne.keySet()) {

                            Map<String, Object> eventAttr = (Map) eventOne.get(keyAttr);
                            eventAttr.put("tableName", "MB_EVENT_PART");
                            Map<String,Object> newData=(Map)eventAttr.get("newData");
                            keyValue.put("ATTR_KEY", keyAttr);
                            saveProdParaDifference(this.eventPartNo, eventAttr, keyValue, seqNo);
                        }
                    }
        }
    }
    //事件参数
    public void eventAttrTran(Map prodMap,String seqNo,String operatorNo){
            if(prodMap.size()>0) {
                //记录组合
                this.eventAttrNo = this.eventAttrNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_EVENT_ATTR"):this.eventAttrNo;
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE",this.eventType);
                for(Object key:prodMap.keySet()) {
                    Map<String,Object> eventOne=(Map)prodMap.get(key);
                    Map<String,Object> newData=(Map)eventOne.get("newData");
                    if(eventOne.size()>0) {
                        keyValue.put("SEQ_NO", newData.get("seqNo"));
                        eventOne.put("tableName", "MB_EVENT_ATTR");
                        saveProdParaDifference(this.eventAttrNo, eventOne, keyValue, seqNo);
                    }
                }
            }
    }
    //事件类型
    public void eventTypeTran(Map prodMap,String seqNo,String operatorNo){
            if(prodMap.size()>0) {
                //记录组合
               this.eventTypeNo = this.eventTypeNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"EVENT_TYPE"):this.eventTypeNo;
                prodMap.put("tableName", "MB_EVENT_TYPE");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", this.eventType);
                saveProdParaDifference(this.eventTypeNo, prodMap, keyValue, seqNo);
            }
    }
    //产品参数
    public void prodDefineTran(Map prodMap,String seqNo,String operatorNo){
            if(prodMap.size()>0) {
                //记录组合
                String subSeqNo = processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_PROD_DEFINE");

                JSONObject keyValue = new JSONObject();
                for (Object key : prodMap.keySet()) {
                    Map define=(Map) prodMap.get(key);
                    Map newData=(Map)  define.get("newData");
                    keyValue.put("PROD_TYPE", this.prodType);
                    keyValue.put("SEQ_NO", newData.get("seqNo"));
                    define.put("tableName", "MB_PROD_DEFINE");
                    saveProdParaDifference(subSeqNo, define, keyValue, seqNo);
                }
            }
    }
    //产品
    public void prodTran(Map prodMap,String seqNo,String operatorNo){
            //记录差异
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String subSeqNo = processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_PROD_TYPE");
                prodMap.put("tableName", "MB_PROD_TYPE");
                JSONObject keyValue = new JSONObject();
                if(newData.get("prodType")!=null) {
                    keyValue.put("PROD_TYPE", newData.get("prodType"));
                    this.prodType=(String)newData.get("prodType");
                }else{
                    Map oldData=(Map)prodMap.get("oldData");
                    keyValue.put("PROD_TYPE", oldData.get("prodType"));
                    this.prodType=(String)oldData.get("prodType");
                }

                saveProdParaDifference(subSeqNo, prodMap, keyValue, seqNo);
            }
        }

    }


    //拿新申请的单号组织操作数据存入paraDifferenceCheckPublish表
    public void saveProdParaDifference(String seqNo,Map map,JSONObject keyValue,String mainSeqNo){
        OmProcessRecordHist omProcessRecordHist =new OmProcessRecordHist();
        Map newData= (Map)map.get("newData");
        Map oldData= (Map)map.get("oldData");
        if(newData.size()==0&&oldData.size()==0){
            return;
        }
        if(newData.get("prodType")!=null) {
            newData.put("prodType", this.prodType);
        }
        if(newData.get("eventType")!=null) {
            newData.put("eventType", this.eventType);
        }
        String dataDui=ResourcesUtils.getJsonString(newData);
        String oldDui=ResourcesUtils.getJsonString(oldData);
        String tableName=(String)map.get("tableName");
        byte[] tmpDataDui;
        byte[] tmpOldDui;
        try {
            tmpDataDui =dataDui.getBytes("UTF-8");
            tmpOldDui = oldDui.getBytes("UTF-8");
            omProcessRecordHist.setPkAndValue(keyValue.toString());
            omProcessRecordHist.setDmlData(tmpDataDui);
            omProcessRecordHist.setDmlOldData(tmpOldDui);
        }catch (UnsupportedEncodingException e){
        }
        //1.获取对象主键
        omProcessRecordHist.setTableName(tableName);
        omProcessRecordHist.setRecSeqNo(seqNo);
        omProcessRecordHist.setDmlType(this.optionType);
        omProcessRecordHist.setMainSeqNo(mainSeqNo);
        omProcessRecordHist.setSubSeqNo(getMaxDiffSub(seqNo) );
        omProcessRecordHistRepository.saveAndFlush(omProcessRecordHist);
    }
    //修改操作流程
    public void updateProdDifferenceInfo(Map mbProdInfo,String reqNo){

    }
    //获取DifferenceInfo中subSeq最大数
    private int getMaxDiffSub(String seqNo){
        String subSeqNo= omProcessRecordHistRepository.findBySubSeqNoMax(seqNo);
        int  intSub=subSeqNo==null?1: 1+Integer.valueOf(subSeqNo);
        return  intSub;
    }
}
