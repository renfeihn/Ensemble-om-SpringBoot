package com.dcits.ensemble.om.controller.paraFlow;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
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
import springfox.documentation.spring.web.json.Json;

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
    private FlowManagement flowManagement;
    @Resource
    OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    FlowPublishService flowPublishService;
    @Resource
    OmProcessRecordHistRepository omProcessRecordHistRepository;
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
        Boolean flag = (Boolean)map.get("downLoad");
        Map responseMap = new HashMap<>();
        String optType= (String) map.get("optType");
        String sql="";
        if("Y".equals(isApproved)) {
            sql = flowPublishService.publishSave(mainSeqNo,flag);
            responseMap.put("sql",sql);
        }
        //只需变更流程信息，登记流程的变动
        if(flag) {
            flowManagement.updateFlowOnly(mainSeqNo, userId, remark, isApproved, optType);
        }
        return ResultUtils.success(responseMap);
    }

    //判断产品是否已经被编辑
    @RequestMapping("/checkProdInFlow")
    public @ResponseBody
    Result checkProdInFlow(HttpServletResponse response, @RequestBody Map map){
        String prodType = (String)map.get("prodType");
        Map responseMap = new HashMap<>();
        Boolean ret = false;
        List<OmProcessMainFlow> omProcessMainFlowList = omProcessMainFlowRepository.findAll();
        for(OmProcessMainFlow omProcessMainFlow:omProcessMainFlowList){
            String status = omProcessMainFlow.getStatus().toString();
            String isP = omProcessMainFlow.getDispose().toString();
            if(("N".equals(isP) && ("1".equals(status))) || "2".equals(status) || "3".equals(status)){
                Boolean findIn = false;
                //存在在途数据 判断是否该产品
                List<OmProcessRecordHist> omProcessRecordHistList = omProcessRecordHistRepository.findByMainSeqNo(omProcessMainFlow.getMainSeqNo());
                for(OmProcessRecordHist omProcessRecordHist:omProcessRecordHistList){
                    if(omProcessRecordHist.getPkAndValue().indexOf(prodType)!=-1){
                        //产品存在
                        ret = true;
                        findIn = true;
                        break;
                    }
                }
                if(findIn){
                    break;
                }
            }
        }
        responseMap.put("ret",ret);
        return ResultUtils.success(responseMap);
    }
}
