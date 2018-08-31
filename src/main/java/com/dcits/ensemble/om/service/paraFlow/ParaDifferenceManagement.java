package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/24.
 */
public class ParaDifferenceManagement {
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
    public Map<String,List> getOperationCombList(String reqNo,String operatorNo){
        Map<String,List> reMap=new HashMap<>();
      List<OmProcessRelationHist> omProcessRelationHistList = omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNo(reqNo,operatorNo);
        for(OmProcessRelationHist omProcessRelationHist : omProcessRelationHistList){
            List<OmProcessRecordHist> omProcessRecordHistList = omProcessRecordHistRepository.findByRecSeqNo(omProcessRelationHist.getRecSeqNo());
            reMap.put(omProcessRelationHist.getTranId(), omProcessRecordHistList);
        }
        return reMap;
    }
}
