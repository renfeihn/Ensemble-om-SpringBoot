package com.dcits.ensemble.om.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.model.RequestBean;
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
    public String getProdInfo(HttpServletResponse response, @RequestParam(value = "prodType", required = false) String prodType) {
        //Map map = requestBean.getBody();
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        //String prodType = (String) map.get("prodType");

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
        return JSON.toJSONString(mbProdInfo);
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
    public void saveProdInfo(HttpServletResponse response, @RequestBody Map map) {
        String userName = (String) map.get("userName");
        String seqNo;
        String option = (String) map.get("option");
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByTranId("MB_PROD_TYPE");
        //无单号，1.申请单号 2.新增记录差异信息 3.根据操作类型更新交易状态
        if (omProcessMainFlow == null || omProcessMainFlow.getMainSeqNo() == null) {
            seqNo = flowManagement.appNoByTable(userName, "MB_PROD_TYPE", "Y");
        } else {
            //此处判断如果交易状态为待复核、待发布状态则抛出异常
            seqNo = omProcessMainFlow.getMainSeqNo();
            BigDecimal dtlSeqNo = omProcessMainFlow.getDtlSeqNo().add(BigDecimal.ONE);
            //更新批次
            omProcessMainFlow.setDtlSeqNo(dtlSeqNo);
            omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
            flowManagement.sumProcessInfo(seqNo, userName, "1", dtlSeqNo,null,null);
        }
        //记录操作流程
        //有单号，1.获取操作信息（操作序号） 2.组合表中生成新的子单号 3.将子单号信息存入差异信息表
        differenceInfo.insertProdDifferenceInfo(map, seqNo);
        //根据option实际选项，操作值
        if ("save".equals(option)) {
            flowManagement.updateFlow(seqNo, "2", userName, "127.0.0.1");
        }
    }

    /**
     * 复核，发布流程处理
     * 通过界面传递的optType(操作类型)3:复核  4:发布
     * 当为复核操作时： 主流程表（om_process_main_flow）更新状态为3:复核 del_seq_no递增
     *                  参数操作历史表（om_process_detail_hist）表，插入一条数据del_seq_no递增 status为3：复核
     * 当为发布操作时： 主流程表（om_process_main_flow）更新状态为4:发布 del_seq_no递增
     *                  参数操作历史表（om_process_detail_hist）表，插入一条数据del_seq_no递增 status为4：发布
     * **/
    @RequestMapping("/tranFlowInfo")
    public void tranFlowInfo(HttpServletResponse response, @RequestBody Map map) {
        String mainSeqNo = (String)map.get("mainSeqNo");
        String userId = (String)map.get("userId");
        String remark = (String)map.get("remark");
        String isApproved = (String)map.get("isApproved");
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        //更新主流程表
        BigDecimal dtlSeqNo = omProcessMainFlow.getDtlSeqNo().add(BigDecimal.ONE);
        //更新批次,流程状态
        omProcessMainFlow.setDtlSeqNo(dtlSeqNo);
        omProcessMainFlow.setMainSeqNo(mainSeqNo);
        omProcessMainFlow.setStatus((String)map.get("optType"));
        omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
        //记录参数操作历史表
        flowManagement.sumProcessInfo(mainSeqNo, userId, (String)map.get("optType"), dtlSeqNo,remark,isApproved);
    }
}