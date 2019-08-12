package com.dcits.ensemble.om.controller.paraTable;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.service.paraTable.ParamTableService;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TableDiffController {
    @Resource
    private ParamTableService paramTableService;
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;

    @RequestMapping("/getDiffTable")
    public
    @ResponseBody
    Result getDiffTable(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        String mainSeqNo = (String)map.get("mainSeqNo");
        String tranId = (String)map.get("tranId");

        //通过交易单号获取差异信息
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        List<OmProcessRelationHist> omProcessRelationHistList=omProcessRelationHistRepository.findByMainSeqNoAndDtlSeqNoAndTranId(mainSeqNo, omProcessMainFlow.getDtlSeqNo().toString(),tranId);
        Map tableDiffAllList = new HashMap<>();
        //通过主键获取
        for(OmProcessRelationHist omProcessRelationHist:omProcessRelationHistList) {
            List<OmProcessRecordHist> omProcessRecordHists = omProcessRecordHistRepository.findByRecSeqNo(omProcessRelationHist.getRecSeqNo());
            for(OmProcessRecordHist omProcessRecordHist: omProcessRecordHists) {
                String newData = "";
                String oldData = "";
                try {
                    newData = new String(omProcessRecordHist.getDmlData(), "utf-8");
                    oldData = new String (omProcessRecordHist.getDmlOldData(),"utf-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                JSONObject newJsonObject = JSONObject.fromObject(newData);
                JSONObject oldJsonObject = JSONObject.fromObject(oldData);
                Map temp = new HashMap<>();
                temp.put("newData",newJsonObject);
                temp.put("oldData",oldJsonObject);
                temp.put("dmlType",omProcessRecordHist.getDmlType());
                tableDiffAllList.put(tableDiffAllList.size(),temp);
            }
        }
        if(tranId != "") {
            responseMap.put("columnHeard", paramTableService.getTableColumnHeard(tranId));
        }
        responseMap.put("tableInfo",tableDiffAllList);
        responseMap.put("mainFlow",omProcessMainFlow);
        return ResultUtils.success(responseMap);
    }
}
