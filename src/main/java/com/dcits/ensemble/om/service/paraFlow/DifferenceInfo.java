package com.dcits.ensemble.om.service.paraFlow;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.OmOperationRecords;
import com.dcits.ensemble.om.repository.paraFlow.OmOperationRecordsRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessInfoRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by ligan on 2018/8/27.
 */
@Service
public class DifferenceInfo {
    @Resource
    private OmOperationRecordsRepository omOperationRecordsRepository;
    @Resource
    private OmProcessInfoRepository omProcessInfoRepository;
    @Resource
    private ProcessCombManagement processCombManagement;
    //记录产品流程信息
   public void insertProdDifferenceInfo(Map mbProdInfo,String reqNo){
       String operatorNo=omProcessInfoRepository.findByReqNo(reqNo)==null?"1":omProcessInfoRepository.findByReqNo(reqNo);
       //1判断上送数据是否有修改操作
       //2记录组合表信息（被修改的表）
       //3变更信息以blob形式存入表
          //产品
       prodTran((Map) mbProdInfo.get("prodType"), reqNo, operatorNo);
       //产品参数
       prodDefineTran(ResourcesUtils.getMap( mbProdInfo.get("prodDefines")), reqNo, operatorNo);
       Map eventInfo=(Map) mbProdInfo.get("mbEventInfo");
       if(eventInfo==null){
           return;
       }
       eventTypeTran(ResourcesUtils.getMap(eventInfo.get("mbEventType")), reqNo, operatorNo);
       eventAttrTran(ResourcesUtils.getMap(eventInfo.get("mbEventAttr")), reqNo, operatorNo);
       eventPartTran(ResourcesUtils.getMap( eventInfo.get("mbEventPart")), reqNo, operatorNo);
   }

    //事件指标
    public void eventPartTran(Map prodMap,String reqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String seqNo = processCombManagement.saveCombInfo(reqNo, operatorNo);
                prodMap.put("tableName", "MB_EVENT_PART");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", newData.get("EVENT_TYPE"));
                keyValue.put("ASSEMBLE_ID", newData.get("ASSEMBLE_ID"));
                keyValue.put("ATTR_KEY", newData.get("ATTR_KEY"));
                String primaryCom = (String) newData.get("EVENT_TYPE") + "," + (String) newData.get("ASSEMBLE_ID") + "," + (String) newData.get("ATTR_KEY");
                saveProdParaDifference(reqNo, prodMap, keyValue, primaryCom);
            }
        }
    }
    //事件参数
    public void eventAttrTran(Map prodMap,String reqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String seqNo = processCombManagement.saveCombInfo(reqNo, operatorNo);
                prodMap.put("tableName", "MB_EVENT_ATTR");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", newData.get("EVENT_TYPE"));
                keyValue.put("SEQ_NO", newData.get("SEQ_NO"));
                String primaryCom = (String) newData.get("EVENT_TYPE") + "," + (String) newData.get("SEQ_NO");
                saveProdParaDifference(seqNo, prodMap, keyValue, primaryCom);
            }
        }
    }
    //事件类型
    public void eventTypeTran(Map prodMap,String reqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String seqNo = processCombManagement.saveCombInfo(reqNo, operatorNo);
                prodMap.put("tableName", "MB_EVENT_TYPE");
                JSONObject keyValue = new JSONObject();
                keyValue.put("EVENT_TYPE", newData.get("EVENT_TYPE"));
                String primaryCom = (String) newData.get("EVENT_TYPE");
                saveProdParaDifference(seqNo, prodMap, keyValue, primaryCom);
            }
        }
    }
    //产品参数
    public void prodDefineTran(Map prodMap,String reqNo,String operatorNo){
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String seqNo = processCombManagement.saveCombInfo(reqNo, operatorNo);
                prodMap.put("tableName", "MB_PROD_DEFINE");
                JSONObject keyValue = new JSONObject();
                for (Object key : newData.keySet()) {
                    Map define=(Map) newData.get(key);
                    keyValue.put("PROD_TYPE", define.get("prodType"));
                    keyValue.put("SEQ_NO", define.get("seqNo"));
                    String primaryCom = (String) define.get("prodType") + ',' + (String) define.get("seqNo");
                    saveProdParaDifference(seqNo, prodMap, keyValue, primaryCom);
                }
            }
        }
    }
    //产品
    public void prodTran(Map prodMap,String reqNo,String operatorNo){
            //记录差异
        if(prodMap.get("newData")!=null ) {
            Map newData=(Map)prodMap.get("newData");
            if(newData.size()>0) {
                //记录组合
                String seqNo = processCombManagement.saveCombInfo(reqNo, operatorNo);
                prodMap.put("tableName", "MB_PROD_TYPE");
                JSONObject keyValue = new JSONObject();
                keyValue.put("PROD_TYPE", newData.get("PROD_TYPE"));
                saveProdParaDifference(seqNo, prodMap, keyValue, (String) newData.get("prodType"));
            }
        }

    }


    //拿新申请的单号组织操作数据存入paraDifferenceCheckPublish表
    public void saveProdParaDifference(String reqNo,Map map,JSONObject keyValue,String primary){
        OmOperationRecords omOperationRecords =new OmOperationRecords();
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
            omOperationRecords.setKeyValue(tmpKeyValue);
            omOperationRecords.setDataDui(tmpDataDui);
            omOperationRecords.setOlddataUpd(tmpOldDui);
        }catch (UnsupportedEncodingException e){
        }
        //1.获取对象主键
        omOperationRecords.setTableFullName(tableName);

        omOperationRecords.setReqNo(reqNo);
        omOperationRecords.setPrimaryKeyvalue(primary);
        omOperationRecords.setOperateType("U");
        omOperationRecordsRepository.saveAndFlush(omOperationRecords);
    }
    //修改操作流程
    public void updateProdDifferenceInfo(Map mbProdInfo,String reqNo){

    }
}
