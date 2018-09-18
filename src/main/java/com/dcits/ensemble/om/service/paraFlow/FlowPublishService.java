package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.base.BaseTableRepositoryImpl;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ligan on 2018/9/13.
 */
@Service
public class FlowPublishService {
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private BaseTableRepositoryImpl baseTableRepositoryImpl;
    public void publishSave(String mainSeqNo){
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        List<OmProcessRelationHist> omProcessRelationHistList=omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNo(mainSeqNo,omProcessMainFlow.getDtlSeqNo().toString());
        for(OmProcessRelationHist omProcessRelationHist:omProcessRelationHistList){
           save(omProcessRelationHist.getRecSeqNo());
        }
    }

    public void save(String recSeqNo){
        List<OmProcessRecordHist> omProcessRecordHists=  omProcessRecordHistRepository.findByRecSeqNo(recSeqNo);
        for(OmProcessRecordHist omProcessRecordHist:omProcessRecordHists){
            String str= null;
            try {
                str = new String(omProcessRecordHist.getDmlData(),"utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            JSONObject myJson = JSONObject.fromObject(str);
            if("I".equals(omProcessRecordHist.getDmlType()))
            baseTableRepositoryImpl.insertTable(omProcessRecordHist.getTableName(),myJson);
            else if("U".equals(omProcessRecordHist.getDmlType())){
                baseTableRepositoryImpl.updateTable(omProcessRecordHist.getTableName(),myJson,omProcessRecordHist.getPkAndValue());
            }
        }

    }
}
