package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class ParaDifferenceManagement {
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;

    //获取主交易号下的所有差异信息
    public Map getDiffByMainSeqNo(String mainSeqNo,String tranId){
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        List<OmProcessRelationHist> omProcessRelationHistList=omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNoAndTranId(mainSeqNo, omProcessMainFlow.getDtlSeqNo().toString(),tranId);
        Map omProcessRecordHistsAll=new HashMap<>();
        String prodType=null;
        Map mbProdChargeList=new HashMap<>();
        Map defineMap=new HashMap<>();
        Map eventMap=new HashMap<>();
        for(OmProcessRelationHist omProcessRelationHist:omProcessRelationHistList){
            List<OmProcessRecordHist> omProcessRecordHists=  omProcessRecordHistRepository.findByRecSeqNo(omProcessRelationHist.getRecSeqNo());
            for(OmProcessRecordHist omProcessRecordHist: omProcessRecordHists) {
                String newData = "";
                try {
                    newData = new String(omProcessRecordHist.getDmlData(), "utf-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                JSONObject newJsonObject = JSONObject.fromObject(newData);
                if(prodType==null&&newJsonObject.get("prodType")!=null&&!"null".equals(newJsonObject.get("prodType").toString())) {
                    prodType=(String)newJsonObject.get("prodType");
                }
                if("MB_PROD_CHARGE".equals(omProcessRecordHist.getTableName())){
                    assembleCharge(newJsonObject, mbProdChargeList, omProcessRecordHist);
                    if(omProcessRecordHistsAll.get("prodType")==null){
                        omProcessRecordHistsAll.put("prodType",newJsonObject.get("prodType"));
                    }
                }else  if("MB_PROD_DEFINE".equals(omProcessRecordHist.getTableName())){
                    assembleDefine(newJsonObject, defineMap);
                }else if("MB_EVENT_ATTR".equals(omProcessRecordHist.getTableName())){
                    assembleEvent(newJsonObject, eventMap,omProcessRecordHist);
                }
            }
        }
        omProcessRecordHistsAll.put("prodType",prodType);
        omProcessRecordHistsAll.put("mbProdCharge",mbProdChargeList);
        omProcessRecordHistsAll.put("mbProdEvent",eventMap);
        omProcessRecordHistsAll.put("prodDefine",defineMap);
        return omProcessRecordHistsAll;
    }
    //装载事件
    public void assembleEvent(JSONObject newJsonObject,Map eventMap,OmProcessRecordHist omProcessRecordHist){
        String tableName=omProcessRecordHist.getTableName();
        String key;
        if("MB_EVENT_ATTR".equals(tableName)){
            key   = (String)newJsonObject.get("assembleId");
        }else{
            key = (String)newJsonObject.get("attrKey");
        }
        if(newJsonObject.get("attrValue")!=null&&!newJsonObject.get("attrValue").equals("null")) {
            String value = (String) newJsonObject.get("attrValue");
            Map map = new HashMap();
            map.put("attrValue",value);
            map.put("optionPermissions",newJsonObject.get("optionPermissions"));
            String eventType=(String) newJsonObject.get("eventType");
            eventMap.put(eventType+'.'+key, map);
        }

    }
    //装载define
    public void assembleDefine(JSONObject newJsonObject,Map defineMap){
        String key = (String)newJsonObject.get("attrKey");
        //此处可将key转换成中文描述
        if(newJsonObject.get("attrValue")!=null&&!newJsonObject.get("attrValue").equals("null")) {
            Object value =newJsonObject.get("attrValue");
            Map map = new HashMap();
            map.put("attrValue",value);
            map.put("optionPermissions",newJsonObject.get("optionPermissions"));
            defineMap.put(key, map);
        }
    }
    //装载prodCharge
    public void assembleCharge(JSONObject newJsonObject,Map mbProdChargeList,OmProcessRecordHist omProcessRecordHist){
        newJsonObject.put("dmlType",omProcessRecordHist.getDmlType());
        mbProdChargeList.put(omProcessRecordHist.getPkAndValue(),newJsonObject);
    }
    //通过recSeqNo获取所有差异并得到目标结果
    public void mergePkList(String reqNo,List<Map> pkList,String column,String columnDesc){
        List<OmProcessRecordHist> omProcessRecordHistList= omProcessRecordHistRepository.findByRecSeqNoOrderBySubSeqNoAsc(reqNo);
        for(OmProcessRecordHist omProcessRecordHist: omProcessRecordHistList){
          String dmlType=omProcessRecordHist.getDmlType();
            JSONObject myJson;
            if("D".equals(dmlType)){
                myJson = getJsonByBolb(omProcessRecordHist.getDmlOldData());
          }else{
             myJson = getJsonByBolb(omProcessRecordHist.getDmlData());
          }
            String pkColumnKey=myJson.getString(column);
            String pkColumnDecs=myJson.getString(columnDesc);
            containsKey(pkList,pkColumnKey,pkColumnDecs,dmlType);
        }
    }
    //获取集合中是否已经存在该key值
    private void containsKey(List<Map> pkList,String key,String keyColumn,String dmlType){
        Map dmlColumn = new HashMap();
        dmlColumn.put("key", key);
        dmlColumn.put("value", keyColumn);
        if("I".equals(dmlType)){
            pkList.add(dmlColumn);
        }else {
            for (Map map:pkList) {
                if (key.equals(map.get("key"))) {
                    pkList.remove(map);
                    break;
                }
            }
            if ("U".equals(dmlType)) {
                pkList.add(dmlColumn);
            }
        }
    }

    public static JSONObject getJsonByBolb(byte[] data){
        String str= null;
        try {
            str = new String(data,"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        JSONObject myJson = JSONObject.fromObject(str);
        return myJson;
    }
}
