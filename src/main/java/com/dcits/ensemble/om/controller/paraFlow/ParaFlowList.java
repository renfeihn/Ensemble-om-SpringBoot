package com.dcits.ensemble.om.controller.paraFlow;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/28.
 */
@Controller
@CrossOrigin
public class ParaFlowList {
    @Resource
    OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    OmProcessMainFlowRepository omProcessMainFlowRepositorys;
    //获取交易流程信息
    @RequestMapping("/reviewList")
    public @ResponseBody
    String getFlowList(HttpServletResponse response){
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepositorys.findAll();
        List<Map> resultList=new ArrayList<>();
       for(OmProcessMainFlow omProcessMainFlow : omProcessMainFlowList){
           Map<String,Object> infoMap=new HashMap<>();
           OmProcessDetailHist omProcessDetailHist = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), BigDecimal.ONE, "1");
           infoMap.put("flowManage", omProcessMainFlow);
           infoMap.put("flowInfo", omProcessDetailHist);
           resultList.add(infoMap);
       }
      return JSON.toJSONString(resultList);
    }
}
