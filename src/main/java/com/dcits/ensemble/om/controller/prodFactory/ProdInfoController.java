package com.dcits.ensemble.om.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.OmOperationRecords;
import com.dcits.ensemble.om.model.dbmodel.OmProcessManagement;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
import com.dcits.ensemble.om.repository.paraFlow.OmOperationRecordsRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessInfoRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessManagementRepository;
import com.dcits.ensemble.om.service.paraFlow.DifferenceInfo;
import com.dcits.ensemble.om.service.paraFlow.FlowManagement;
import com.dcits.ensemble.om.service.prodFactory.MbProdInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@CrossOrigin
public class ProdInfoController {

    @Resource
     private  MbProdInfoService mbProdInfoService;
    @Resource
    private FlowManagement flowManagement;
    @Resource
    private OmProcessManagementRepository omProcessManagementRepository;
    @Resource
    private OmOperationRecordsRepository omOperationRecordsRepository;
    @Resource
    private OmProcessInfoRepository omProcessInfoRepository;
    @Resource
    private DifferenceInfo differenceInfo;
    @RequestMapping("/getProdInfo")
    public @ResponseBody
    String getProdInfo(HttpServletResponse response,@RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap=new HashMap<>();
        String prodType=(String)map.get("prodType");
        MbProdInfo mbProdInfo=mbProdInfoService.getProdInfo(prodType);
        OmProcessManagement omProcessManagement= omProcessManagementRepository.findByTransactionId("MbProdType");
        List<OmOperationRecords> omOperationRecordsList =null;
/*      查询差异信息
        if(omProcessManagement!=null&&omProcessManagement.getReqNo()!=null){
            //获取组合信息
            String operatorNo=omProcessInfoRepository.findByReqNo(omProcessManagement.getReqNo());

            omOperationRecordsList = omOperationRecordsRepository.searchDiffByTableName(omProcessManagement.getReqNo());
        }*/
        responseMap.put("prodInfo",mbProdInfo.toString());
        if(omOperationRecordsList !=null)
        responseMap.put("diff", omOperationRecordsList);
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
    public void saveProdInfo(HttpServletResponse response,@RequestBody Map map) {
        String userName=(String)map.get("userName");
        String seqNo;
        String option=(String)map.get("option");
        OmProcessManagement omProcessManagement = omProcessManagementRepository.findByTransactionId("MB_PROD_TYPE");
                //无单号，1.申请单号 2.新增记录差异信息 3.根据操作类型更新交易状态
                if (omProcessManagement == null || omProcessManagement.getReqNo() == null) {
                    seqNo = flowManagement.appNoByTable(userName, "MB_PROD_TYPE", "Y");
                } else {
                    //此处判断如果交易状态为待复核、待发布状态则抛出异常
                    seqNo = omProcessManagement.getReqNo();
                    flowManagement.sumProcessInfo(seqNo,userName,"1");
                }
            //记录操作流程
        //有单号，1.获取操作信息（操作序号） 2.组合表中生成新的子单号 3.将子单号信息存入差异信息表
            differenceInfo.insertProdDifferenceInfo(map,seqNo);
         //根据option实际选项，操作值
        if("S".equals(option)) {
            flowManagement.updateFlow(seqNo, "2", userName, "127.0.0.1");
        }
    }
}