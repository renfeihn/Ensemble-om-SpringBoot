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
    public Map<String,List> getOperationCombList(String reqNo,String operatorNo){
        Map<String,List> reMap=new HashMap<>();
      List<OmProcessRelationHist> omProcessRelationHistList = omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNo(reqNo,operatorNo);
        for(OmProcessRelationHist omProcessRelationHist : omProcessRelationHistList){
            List<OmProcessRecordHist> omProcessRecordHistList = omProcessRecordHistRepository.findByRecSeqNo(omProcessRelationHist.getRecSeqNo());
            reMap.put(omProcessRelationHist.getTranId(), omProcessRecordHistList);
        }
        return reMap;
    }
    //获取主交易号下的所有差异信息
    public Map getDiffByMainSeqNo(String mainSeqNo){
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        List<OmProcessRelationHist> omProcessRelationHistList=omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNo(mainSeqNo, omProcessMainFlow.getDtlSeqNo().toString());
        Map omProcessRecordHistsAll=new HashMap<>();
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
                if ("MB_PROD_DEFINE".equals(omProcessRecordHist.getTableName())) {
                    assembleDefine(newJsonObject, omProcessRecordHistsAll, omProcessRecordHist);
                }
                if("MB_PROD_CHARGE".equals(omProcessRecordHist.getTableName())){
                    Map mbProdChargeList=new HashMap<>();
                    assembleCharge(newJsonObject, mbProdChargeList, omProcessRecordHist);
                    if(omProcessRecordHistsAll.get("prodType")==null){
                        omProcessRecordHistsAll.put("prodType",newJsonObject.get("prodType"));
                    }
                    omProcessRecordHistsAll.put("mbProdCharge",mbProdChargeList);
                }
            }

        }
        return omProcessRecordHistsAll;
    }
    //装载define
    public void assembleDefine(JSONObject newJsonObject,Map omProcessRecordHistsAll,OmProcessRecordHist omProcessRecordHist){
        String eventType = "";
        if ("MB_EVENT_ATTR".equals(omProcessRecordHist.getTableName()))
            eventType = "." + newJsonObject.get("EVENT_TYPE");
        String eventPart = "";
        if ("MB_EVENT_PART".equals(omProcessRecordHist.getTableName())) {
            eventType = "." + newJsonObject.get("EVENT_TYPE");
            eventPart = "." + newJsonObject.get("ASSEMBLE_ID");
        }
        String key = omProcessRecordHist.getTableName() + eventType + eventPart + "." + newJsonObject.get("attrKey");
        //此处可将key转换成中文描述
        if(!newJsonObject.get("attrValue").equals("null")) {
            String value = (String) newJsonObject.get("attrValue");
            omProcessRecordHistsAll.put(key, value);
        }
        omProcessRecordHistsAll.put("prodType",newJsonObject.get("prodType"));
    }
    //装载prodCharge
    public void assembleCharge(JSONObject newJsonObject,Map mbProdChargeList,OmProcessRecordHist omProcessRecordHist){
        newJsonObject.put("dmlType",omProcessRecordHist.getDmlType());
        mbProdChargeList.put(omProcessRecordHist.getPkAndValue(),newJsonObject);
    }
}
