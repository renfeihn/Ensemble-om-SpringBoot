package com.dcits.ensemble.om.controller.paraFlow;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.paraFlow.FlowPublishService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
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
    private FlowManagement flowManagement;
    @Resource
    OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    FlowPublishService flowPublishService;
    //获取交易提交流程信息
    @RequestMapping("/reviewList")
    public @ResponseBody
    Result getFlowList(HttpServletResponse response){
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepository.findByStatus("2");
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
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepository.findAll();
        List<Map> resultList=new ArrayList<>();
        for(OmProcessMainFlow omProcessMainFlow : omProcessMainFlowList){
            Map<String,Object> checkMap= new HashMap<>();
            //获取提交流程信息
            OmProcessDetailHist omProcessDetailHistCheck = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), omProcessMainFlow.getDtlSeqNo(),omProcessMainFlow.getStatus());
            checkMap.put("flowManage", omProcessMainFlow);
            checkMap.put("flowCheckInfo", omProcessDetailHistCheck);
            OmProcessDetailHist omProcessDetailHistCommit = omProcessDetailHistRepository.findByMainSeqNoAndDtlSeqNoAndStatus(omProcessMainFlow.getMainSeqNo(), omProcessMainFlow.getDtlSeqNo(),"2");
            checkMap.put("flowCommitInfo", omProcessDetailHistCommit);
            resultList.add(checkMap);
        }
        return ResultUtils.success(resultList);
    }
    //发布流程
    @RequestMapping("/publish")
    public @ResponseBody
    Result publishFlow(HttpServletResponse response, @RequestBody Map map){
        String mainSeqNo = (String)map.get("mainSeqNo");
        String userId = (String)map.get("userId");
        String remark = (String)map.get("remark");
        String isApproved = (String)map.get("isApproved");
        String optType= (String) map.get("optType");
        if("Y".equals(optType))
        flowPublishService.publishSave(mainSeqNo);
        //只需变更流程信息，登记流程的变动
        flowManagement.updateFlowOnly(mainSeqNo,userId,remark,isApproved,optType);
        return ResultUtils.success();
    }
}
