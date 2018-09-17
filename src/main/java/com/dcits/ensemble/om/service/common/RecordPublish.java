package com.dcits.ensemble.om.service.common;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.repository.base.BaseTableRepositoryImpl;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import com.dcits.ensemble.om.table.DbTable;
import com.dcits.ensemble.om.table.TableDefine;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/9/12.
 */
@Service
public class RecordPublish {
    @Resource
    private BaseTableRepositoryImpl baseTableRepositoryImpl;
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    public void insert(){
        List<OmProcessRecordHist> omProcessRecordHists=  omProcessRecordHistRepository.searchDiffByTableName("MB_PROD_DEFINE");
        for(OmProcessRecordHist omProcessRecordHist:omProcessRecordHists){
            String str= new String(omProcessRecordHist.getDmlData()) ;
            JSONObject  myJson = JSONObject.fromObject(str);
            baseTableRepositoryImpl.insertTable(omProcessRecordHist.getTableName(),myJson);
        }

    }
}
