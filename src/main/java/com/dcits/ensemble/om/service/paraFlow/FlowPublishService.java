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
    public String publishSave(String mainSeqNo,Boolean flag){
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        List<OmProcessRelationHist> omProcessRelationHistList=omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNo(mainSeqNo, omProcessMainFlow.getDtlSeqNo().toString());
        StringBuffer pushSql= new StringBuffer();
        for(OmProcessRelationHist omProcessRelationHist:omProcessRelationHistList){
            pushSql.append(save(omProcessRelationHist.getRecSeqNo(),flag));
        }
        return pushSql.toString();
    }

    public StringBuffer save(String recSeqNo,Boolean flag){
        List<OmProcessRecordHist> omProcessRecordHists=  omProcessRecordHistRepository.findByRecSeqNo(recSeqNo);
        StringBuffer pushSql=new StringBuffer();
        for(OmProcessRecordHist omProcessRecordHist:omProcessRecordHists){
            JSONObject myJson = ParaDifferenceManagement.getJsonByBolb(omProcessRecordHist.getDmlData());
            if("I".equals(omProcessRecordHist.getDmlType()))
                pushSql.append(baseTableRepositoryImpl.insertTable(omProcessRecordHist.getTableName(),myJson,flag));
            else if("U".equals(omProcessRecordHist.getDmlType())) {
                pushSql.append(baseTableRepositoryImpl.updateTable(omProcessRecordHist.getTableName(), myJson, omProcessRecordHist.getPkAndValue(),flag));
            }else if("D".equals(omProcessRecordHist.getDmlType())){
                //参数删除
                pushSql.append(baseTableRepositoryImpl.deleteTable(omProcessRecordHist.getTableName(), myJson, omProcessRecordHist.getPkAndValue(),flag));
            }
        }
        return pushSql;
    }
}
