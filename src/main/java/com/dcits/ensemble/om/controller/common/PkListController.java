package com.dcits.ensemble.om.controller.common;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.base.PkListRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.service.paraFlow.ParaDifferenceManagement;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/9/28.
 */
@Controller
public class PkListController {
    @Resource
    public PkListRepository pkListRepository;
    @Resource
    public OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    public OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    public ParaDifferenceManagement paraDifferenceManagement;
    @RequestMapping("/getPkList")
    @ResponseBody
    public Result getPkList(HttpServletResponse response, @RequestBody Map map) {
        String tableName=(String)map.get("tableName");
        String column=(String)map.get("columnCode");
        String columnDesc=(String)map.get("columnDesc");
        List<Map> columnMap= pkListRepository.getPkList(tableName,column,columnDesc);
        return  ResultUtils.success(columnMap);
    }
    @RequestMapping("/getPkListColumnRf")
    @ResponseBody
    public Result getPkListColumnRf(HttpServletResponse response, @RequestBody Map map) {
        String tableName=(String)map.get("tableName");
        String column=(String)map.get("columnCode");
        String columnDesc=(String)map.get("columnDesc");
        //取同单号下的交易数据
        String mainSeqNo =(String) map.get("mainSeqNo");
        List<Map> columnMap= pkListRepository.getPkList(tableName,column,columnDesc);
        if(mainSeqNo!=null) {
            OmProcessRelationHist omProcessRelationHist=omProcessRelationHistRepository.findByMainSeqNoAndAndTranId(mainSeqNo,tableName);
            //从差异表结合新表反向得到数据
            if(omProcessRelationHist!=null) {
                paraDifferenceManagement.mergePkList(omProcessRelationHist.getRecSeqNo(), columnMap,column,columnDesc);
            }
        }
        return  ResultUtils.success(columnMap);
    }
}
