package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessCombination;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessCombinationRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by ligan on 2018/8/30.
 */
@Service
public class ProcessCombManagement {
    @Resource
    private OmProcessCombinationRepository omProcessCombinationRepository;
    public String saveCombInfo(String reqNo,String operatorNo){
        String seqNo= ResourcesUtils.getDateTimeUuId();
        OmProcessCombination omProcessCombination=new OmProcessCombination();
        omProcessCombination.setReqNo(reqNo);
        omProcessCombination.setSubReqNo(seqNo);
        omProcessCombination.setOperatorNo(operatorNo);
        omProcessCombinationRepository.saveAndFlush(omProcessCombination);
        return seqNo;
    }
}
