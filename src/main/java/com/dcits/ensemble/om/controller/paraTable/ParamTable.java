package com.dcits.ensemble.om.controller.paraTable;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.service.paraFlow.DifferenceProdInfo;
import com.dcits.ensemble.om.service.paraFlow.DifferenceTableInfo;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.paraTable.ParamTableService;
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

@Api(value = "/getParamTable", tags = "单表模块")
@Controller
public class ParamTable {
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    private FlowManagement flowManagement;
    @Resource
    private DifferenceTableInfo differenceTableInfo;
    @Resource
    private ParamTableService paramTableService;
    @ApiOperation(value = "单表信息", notes = "获取单表信息")
    @RequestMapping("/getTableInfo")
    @ResponseBody
    public Result getProdInfo(HttpServletResponse response, @RequestParam(value = "tableName", required = true) String tableName) {
        //Map map = requestBean.getBody();
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        //1.根据表名获取参数列信息
        responseMap.put("column",paramTableService.getTableColumn(tableName));
        responseMap.put("columnInfo",paramTableService.getTableInfo(tableName));
        //2.根据参数列信息及表名差数据库获取数据信息
        //3.将得到的信息分为两个对象集合传到前端
        return ResultUtils.success(responseMap);
    }
    /**
     * 保存、
     * 单表的保存操作
     *
     * @param response
     */
    @RequestMapping("/saveTable")
    @ResponseBody
    public Result saveTable(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userName = (String) map.get("userName");
        String tableName= (String) map.get("tableName");
        List list= (List) map.get("data");
        String seqNo;
        String option = (String) map.get("option");
        //根据option设置交易状态  保存(save):2  暂存(temp):1
        String status = "save".equals(option)?"2":"temp".equals(option)?"1":"";
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByTranIdAndStatus(tableName, "6");
        //无单号，1.申请单号 2.新增记录差异信息 3.根据操作类型更新交易状态
        if (omProcessMainFlow == null || omProcessMainFlow.getMainSeqNo() == null) {
            seqNo = flowManagement.appNoByTable(userName, tableName, "Y",status);
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
        differenceTableInfo.insertTableDifferenceInfo(list, seqNo,tableName);
        return ResultUtils.success();
    }
}