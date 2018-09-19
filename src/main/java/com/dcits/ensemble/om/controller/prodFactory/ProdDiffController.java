package com.dcits.ensemble.om.controller.prodFactory;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.service.paraFlow.DifferenceInfo;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.paraFlow.ParaDifferenceManagement;
import com.dcits.ensemble.om.service.prodFactory.MbProdInfoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProdDiffController {

    @Resource
    private MbProdInfoService mbProdInfoService;
    @Resource
    private ParaDifferenceManagement paraDifferenceManagement;
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;


    @RequestMapping("/getProdDiff")
    public
    @ResponseBody Result getProdDiff(HttpServletResponse response, @RequestBody Map map) {
        //Map map = requestBean.getBody();
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        String mainSeqNo = (String)map.get("mainSeqNo");

        Map omProcessRecordHistList = paraDifferenceManagement.getDiffByMainSeqNo(mainSeqNo);
        MbProdInfo mbProdInfo = mbProdInfoService.getProdInfo((String)omProcessRecordHistList.get("prodType"));

        responseMap.put("prodDefine", mbProdInfo.getProdDefines());
        responseMap.put("mbProdCharge", mbProdInfo.getMbProdCharge());
        responseMap.put("mbProdType", mbProdInfo.getProdType());

        //组装事件
        responseMap.put("prodEvent", mbProdInfoService.assembleEvent(mbProdInfo.getMbEventInfos()));
        if (omProcessRecordHistList != null)
            responseMap.put("diff", omProcessRecordHistList);
        responseMap.put("prodType", omProcessRecordHistList.get("prodType"));

        return ResultUtils.success(responseMap);
    }


}