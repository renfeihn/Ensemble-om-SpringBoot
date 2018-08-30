package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmOperationRecords;
import com.dcits.ensemble.om.model.dbmodel.OmProcessCombination;
import com.dcits.ensemble.om.repository.paraFlow.OmOperationRecordsRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessCombinationRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/24.
 */
public class ParaDifferenceManagement {
    @Resource
    private OmOperationRecordsRepository omOperationRecordsRepository;
    @Resource
    private OmProcessCombinationRepository omProcessCombinationRepository;
    public Map<String,List> getOperationCombList(String reqNo,String operatorNo){
        Map<String,List> reMap=new HashMap<>();
      List<OmProcessCombination> omProcessCombinationList=omProcessCombinationRepository.findByReqNoAndOperatorNo(reqNo,operatorNo);
        for(OmProcessCombination omProcessCombination:omProcessCombinationList){
            List<OmOperationRecords> omOperationRecordsList=omOperationRecordsRepository.findByReqNo(omProcessCombination.getSubReqNo());
            reMap.put(omProcessCombination.getSubTransactionId(),omOperationRecordsList);
        }
        return reMap;
    }
}
