package com.dcits.ensemble.om.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.service.paraFlow.DifferenceInfo;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.prodFactory.MbProdInfoService;
import io.swagger.annotations.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(value = "/getProdInfo", tags = "产品模块")
@Controller
public class ProdInfoController {

    @Resource
    private MbProdInfoService mbProdInfoService;
    @Resource
    private FlowManagement flowManagement;
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    private DifferenceInfo differenceInfo;

    @ApiOperation(value = "产品信息", notes = "获取产品明细")
    @RequestMapping("/getProdInfo")
    @ResponseBody
    public Result getProdInfo(HttpServletResponse response, @RequestParam(value = "prodType", required = false) String prodType) {
        //Map map = requestBean.getBody();
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        //String prodType = (String) map.get("prodType");
        if(prodType==null){
            return ResultUtils.success();
        }
        MbProdInfo mbProdInfo = mbProdInfoService.getProdInfo(prodType);
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByTranId("MbProdType");
        List<OmProcessRecordHist> omProcessRecordHistList = null;
        /*查询差异信息
        if(omProcessMainFlow!=null&&omProcessMainFlow.getReqNo()!=null){
            //获取组合信息
            String operatorNo=omProcessDetailHistRepository.findByReqNo(omProcessMainFlow.getReqNo());

            omProcessRecordHistList = omProcessRecordHistRepository.searchDiffByTableName(omProcessMainFlow.getReqNo());
        }*/
        responseMap.put("prodInfo", mbProdInfo.toString());
        if (omProcessRecordHistList != null)
            responseMap.put("diff", omProcessRecordHistList);
        return ResultUtils.success(mbProdInfo);
    }

    /**
     * 保存、暂存处理
     * 通过页面传递的交易单号判断是暂存还是保存
     * 无单号：为交易申请单号，记录上送的页面操作
     * 有单号&&保存操作：根据交易单号改交易状态，更新操作记录表
     * 有单号&&暂存操作：根据单号更新操作记录表
     *
     * @param response
     */
    @RequestMapping("/saveProdInfo")
    @ResponseBody
    public Result saveProdInfo(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userName = (String) map.get("userName");
        String seqNo;
        String option = (String) map.get("option"); 
        //根据option设置交易状态  保存(save):2  暂存(temp):1
        String status = "save".equals(option)?"2":"temp".equals(option)?"1":"";
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByTranIdAndStatus("MB_PROD_TYPE", "6");
        //无单号，1.申请单号 2.新增记录差异信息 3.根据操作类型更新交易状态
        if (omProcessMainFlow == null || omProcessMainFlow.getMainSeqNo() == null) {
            seqNo = flowManagement.appNoByTable(userName, "MB_PROD_TYPE", "Y",status);
        } else {
            //此处判断如果交易状态为待复核、待发布状态则抛出异常
            seqNo = omProcessMainFlow.getMainSeqNo();
            BigDecimal dtlSeqNo = omProcessMainFlow.getDtlSeqNo().add(BigDecimal.ONE);
            //暂存状态更新批次
                omProcessMainFlow.setDtlSeqNo(dtlSeqNo);
            omProcessMainFlow.setStatus(status);
            omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
            flowManagement.sumProcessInfo(seqNo, userName, status, omProcessMainFlow.getDtlSeqNo(),null,null);
        }
        //记录操作流程
        //有单号，1.获取操作信息（操作序号） 2.组合表中生成新的子单号 3.将子单号信息存入差异信息表
        differenceInfo.insertProdDifferenceInfo(map, seqNo);
        return ResultUtils.success();
    }

    /**
     * 复核，发布流程处理
     * 通过界面传递的optType(操作类型)3:复核  4:发布
     **/
    @RequestMapping("/tranFlowInfo")
    @ResponseBody
    public Result tranFlowInfo(HttpServletResponse response, @RequestBody Map map) {
        String mainSeqNo = (String)map.get("mainSeqNo");
        String userId = (String)map.get("userId");
        String remark = (String)map.get("remark");
        String isApproved = (String)map.get("isApproved");
       String optType= (String) map.get("optType");

        //只需变更流程信息，登记流程的变动
       flowManagement.updateFlowOnly(mainSeqNo, userId, remark, isApproved, optType);
        return ResultUtils.success();
    }
    /**
     * 界面修改列的位置
     */
    @RequestMapping("/saveColumn")
    @ResponseBody
    public Result saveColumn(HttpServletResponse response, @RequestBody Map map) {
        List<Map> columnList=(List)map.get("column");
        String prodType=(String)map.get("prodType");
        for(Map column: columnList){
            mbProdInfoService.updateColumn(column,prodType);
        }
        return ResultUtils.success();
    }
    /**
     * 查询影响子产品的列表
     */
    @RequestMapping("/findChildProd")
    @ResponseBody
    public Result findChildProd(HttpServletResponse response, @RequestBody Map map) {
        String prodType=(String) map.get("prodType");
        String attrValue=(String) map.get("attrValue");
        String attrType=(String) map.get("attrType");
        List responseList= mbProdInfoService.findChildDiffInfo(prodType, attrValue,attrType);
        return ResultUtils.success(responseList);
    }
}