package com.dcits.ensemble.om.controller.paraFlow;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.model.dbmodel.tables.OmTableList;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.repository.tables.OmTableListRepository;
import com.dcits.ensemble.om.service.dataAssembling.ProdDataAssembling;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.prodFactory.MbProdInfoService;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/24.
 */
@Controller
public class ApplicationAction {
    /**
     * 用户暂存时申请订单号
     * 在操作流程记录表中储存用户操作信息
     *
     * @param response
     * @param prodType
     * @return
     */
    @Resource
    public ProdDataAssembling prodDataAssembling;
    @Resource
    public MbProdInfoService mbProdInfoService;
    @Resource
    public OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    public OmProcessRelationHistRepository omProcessRelationHistRepository;
    @Resource
    public OmTableListRepository omTableListRepository;
    @Resource
    public OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    public FlowManagement flowManagement;
    @RequestMapping("/application/{prodType}")
    public @ResponseBody
    MbProdInfo application(HttpServletResponse response, @PathVariable("prodType") String prodType) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        MbProdInfo mbProdInfo = mbProdInfoService.getProdInfo(prodType);
        prodDataAssembling.getAssembleData(mbProdInfo, "1506482712346AQVQV");
        return mbProdInfo;
    }
    @RequestMapping("/submitCommon")
    @ResponseBody
    public Result submitCommon(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userId = (String) map.get("userId");
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByUserIdAndDispose(userId, "N");
        omProcessMainFlow.setStatus("2");
        omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
        flowManagement.sumProcessInfo(omProcessMainFlow.getMainSeqNo(), userId, "2", omProcessMainFlow.getDtlSeqNo(),null,null);
        return ResultUtils.success();
    }
    @RequestMapping("/getCommonList")
    public
    @ResponseBody
    Result getProdList(HttpServletResponse response,@RequestBody Map map){
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userId = (String) map.get("userId");
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByUserIdAndDispose(userId, "N");
        List<OmProcessRelationHist> mbProdTypeList=new ArrayList<>();
        if(omProcessMainFlow !=null &&("1".equals(omProcessMainFlow.getStatus())||"6".equals(omProcessMainFlow.getStatus()))) {
            mbProdTypeList = omProcessRelationHistRepository.findByMainSeqNoGroupBy(omProcessMainFlow.getMainSeqNo());
        }
        return   ResultUtils.success(mbProdTypeList);
    }
    @RequestMapping("/cleanList")
    public
    @ResponseBody
    Result cleanList(HttpServletResponse response,@RequestBody Map map){
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String seqNo = (String) map.get("seqNo");
        omProcessMainFlowRepository.updateParaDispose("Y",seqNo);
        flowManagement.deleteTask("ALL",seqNo);
        return   ResultUtils.success();
    }
    @RequestMapping("/deleteTask")
    public
    @ResponseBody
    Result deleteTask(HttpServletResponse response,@RequestBody Map map){
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String seqNo = (String) map.get("seqNo");
        String tranId = (String) map.get("tranId");
        flowManagement.deleteTask(tranId,seqNo);
        return   ResultUtils.success();
    }
    /**
     *
     * 获取待发布数据的订单列表
     * */
    @RequestMapping("/getTaskListBySeqNo")
    @ResponseBody
    public Result getTaskListBySeqNo(HttpServletResponse response, @RequestBody Map map){
        String seqNo=(String) map.get("seqNo");
        List<OmProcessRelationHist> mbProdTypeList = omProcessRelationHistRepository.findByMainSeqNoGroupBy(seqNo);
        return ResultUtils.success(mbProdTypeList);
    }

}
