package com.dcits.ensemble.om.controller.paraFlow;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
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
import java.util.*;

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
    //获取交易提交流程信息
    @RequestMapping("/reviewList")
    public @ResponseBody
    Result getFlowList(HttpServletResponse response){
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepositorys.findAll();
        List<Map> resultList=new ArrayList<>();
       for(OmProcessMainFlow omProcessMainFlow : omProcessMainFlowList){
           Map<String,Object> commitMap= new HashMap<>();
           //获取提交流程信息
           OmProcessDetailHist omProcessDetailHistCommit = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), omProcessMainFlow.getDtlSeqNo(),omProcessMainFlow.getStatus());
           commitMap.put("flowManage", omProcessMainFlow);
           commitMap.put("flowCommitInfo", omProcessDetailHistCommit);
           resultList.add(commitMap);
       }
      return ResultUtils.success(resultList);
    }
    //获取交易复核流程信息
    @RequestMapping("/reviewCheckList")
    public @ResponseBody
    Result getCheckFlowList(HttpServletResponse response){
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepositorys.findAll();
        List<Map> resultList=new ArrayList<>();
        for(OmProcessMainFlow omProcessMainFlow : omProcessMainFlowList){
            Map<String,Object> checkMap= new HashMap<>();
            //获取提交流程信息
            OmProcessDetailHist omProcessDetailHistCheck = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), omProcessMainFlow.getDtlSeqNo(),omProcessMainFlow.getStatus());
            checkMap.put("flowManage", omProcessMainFlow);
            checkMap.put("flowCheckInfo", omProcessDetailHistCheck);
            OmProcessDetailHist omProcessDetailHistCommit = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), BigDecimal.ONE,"2");
            checkMap.put("flowCommitInfo", omProcessDetailHistCommit);
            resultList.add(checkMap);
        }
        return ResultUtils.success(resultList);
    }

}
