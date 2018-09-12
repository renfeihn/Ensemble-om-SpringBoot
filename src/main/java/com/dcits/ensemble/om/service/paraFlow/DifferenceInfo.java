package com.dcits.ensemble.om.service.paraFlow;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.rmi.MarshalledObject;
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
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                this.eventPartNo = this.eventPartNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_EVENT_PART"):this.eventPartNo;
                prodMap.put("tableName", "MB_EVENT_PART");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", this.eventType);
                for(Object key:newData.keySet()) {
                    Map<String, Map> eventOne = (Map) newData.get(key);
                    if(eventOne.size()>0) {
                    keyValue.put("ASSEMBLE_ID", key);
                        for(Object keyAttr:eventOne.keySet()) {
                            keyValue.put("ATTR_KEY", keyAttr);
                            saveProdParaDifference(this.eventPartNo, prodMap, keyValue, seqNo);
                        }
                    }
                }
            }
        }
    }
    //事件参数
    public void eventAttrTran(Map prodMap,String seqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                this.eventAttrNo = this.eventAttrNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_EVENT_ATTR"):this.eventAttrNo;
                prodMap.put("tableName", "MB_EVENT_ATTR");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE",this.eventType);
                for(Object key:newData.keySet()) {
                    Map<String,Map> eventOne=(Map)newData.get(key);
                    if(eventOne.size()>0) {
                        keyValue.put("SEQ_NO", eventOne.get("seqNo"));
                        saveProdParaDifference(this.eventAttrNo, prodMap, keyValue, seqNo);
                    }
                }
            }
        }
    }
    //事件类型
    public void eventTypeTran(Map prodMap,String seqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
               this.eventTypeNo = this.eventTypeNo==null?processCombManagement.saveCombInfo(seqNo, operatorNo,"EVENT_TYPE"):this.eventTypeNo;
                prodMap.put("tableName", "MB_EVENT_TYPE");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", this.eventType);
                saveProdParaDifference(this.eventTypeNo, prodMap, keyValue, seqNo);
            }
        }
    }
    //产品参数
    public void prodDefineTran(Map prodMap,String seqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String subSeqNo = processCombManagement.saveCombInfo(seqNo, operatorNo,"MB_PROD_DEFINE");
                prodMap.put("tableName", "MB_PROD_DEFINE");
                JSONObject keyValue = new JSONObject();
                for (Object key : newData.keySet()) {
                    Map define=(Map) newData.get(key);
                    keyValue.put("PROD_TYPE", this.prodType);
                    keyValue.put("SEQ_NO", define.get("seqNo"));
                    saveProdParaDifference(subSeqNo, prodMap, keyValue, seqNo);
                }
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
                keyValue.put("PROD_TYPE", newData.get("prodType"));
                this.prodType=(String)newData.get("prodType");
                saveProdParaDifference(subSeqNo, prodMap, keyValue, seqNo);
            }
        }

    }


    //拿新申请的单号组织操作数据存入paraDifferenceCheckPublish表
    public void saveProdParaDifference(String seqNo,Map map,JSONObject keyValue,String mainSeqNo){
        OmProcessRecordHist omProcessRecordHist =new OmProcessRecordHist();
        String dataDui=ResourcesUtils.getJsonString(map.get("newData"));
        String oldDui=ResourcesUtils.getJsonString(map.get("oldData"));
        String tableName=(String)map.get("tableName");
        byte[] tmpDataDui;
        byte[] tmpOldDui;
        byte[] tmpKeyValue;
        try {
            tmpDataDui =dataDui.getBytes("UTF-8");
            tmpOldDui =oldDui.getBytes("UTF-8");
            tmpKeyValue=keyValue.toString().getBytes("UTF-8");
            omProcessRecordHist.setPkAndValue(tmpKeyValue);
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
