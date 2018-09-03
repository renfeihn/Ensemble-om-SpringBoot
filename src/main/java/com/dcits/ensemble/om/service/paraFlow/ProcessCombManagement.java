package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by ligan on 2018/8/30.
 */
@Service
public class ProcessCombManagement {
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
    public String saveCombInfo(String reqNo,String operatorNo,String tranId){
        String seqNo= ResourcesUtils.getDateTimeUuId();
        OmProcessRelationHist omProcessRelationHist =new OmProcessRelationHist();
        omProcessRelationHist.setMainSeqNo(reqNo);
        omProcessRelationHist.setRecSeqNo(seqNo);
        omProcessRelationHist.setDtlSeqNo(operatorNo);
        omProcessRelationHist.setTranId(tranId);
        omProcessRelationHistRepository.saveAndFlush(omProcessRelationHist);
        return seqNo;
    }
}
