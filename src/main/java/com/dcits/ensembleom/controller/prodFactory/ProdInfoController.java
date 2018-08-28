package com.dcits.ensembleom.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.ParaCircleFlow;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaCircleFlowRepository;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import com.dcits.ensembleom.service.paraFlow.DifferenceInfo;
import com.dcits.ensembleom.service.paraFlow.FlowManagement;
import com.dcits.ensembleom.service.prodFactory.MbProdInfoService;
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
    private ParaCircleFlowRepository paraCircleFlowRepository;
    @Resource
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    @Resource
    private DifferenceInfo differenceInfo;
    @RequestMapping("/getProdInfo")
    public @ResponseBody
    String getProdInfo(HttpServletResponse response,@RequestBody Map map) {
//        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap=new HashMap<>();
        String prodType=(String)map.get("prodType");
        MbProdInfo mbProdInfo=mbProdInfoService.getProdInfo(prodType);
        ParaCircleFlow paraCircleFlow= paraCircleFlowRepository.findByTransactionId("MbProdType");
        List<ParaDifferenceCheckPublish> paraDifferenceCheckPublishList=null;
        if(paraCircleFlow!=null&&paraCircleFlow.getReqNo()!=null){
            paraDifferenceCheckPublishList  =paraDifferenceCheckPublishRepository.searchDiffByTableName(paraCircleFlow.getReqNo());
        }
        responseMap.put("prodInfo",mbProdInfo.toString());
        if(paraDifferenceCheckPublishList!=null)
        responseMap.put("diff",paraDifferenceCheckPublishList);
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
      MbProdInfo  mbProdInfo=(MbProdInfo) JSON.toJavaObject((JSONObject)map.get(""), MbProdInfo.class);
        String seqNo=(String)map.get("reqNo");
        String option=(String)map.get("option");
        //记录流程信息,记录一对多信息
        mbProdInfoService.saveProdInfo(mbProdInfo);
        if(seqNo==null ||"".equals(seqNo) ) {
            //无单号，1.申请单号 2.新增记录差异信息 3.根据操作类型更新交易状态
            ParaCircleFlow paraCircleFlow = paraCircleFlowRepository.findByTransactionId("MbProdType");
            if(paraCircleFlow!=null&&paraCircleFlow.getReqNo()!=null){
                seqNo=  flowManagement.appNoByTable("", "","");
            }else{
                //此处判断如果交易状态为待复核、待发布状态则抛出异常
                seqNo=paraCircleFlow.getReqNo();
            }
            //记录操作流程
            differenceInfo.insertProdDifferenceInfo(mbProdInfo,seqNo);
        }else{
            //有单号，1.更新差异信息 2.根据操作类型更新交易状态
            differenceInfo.updateProdDifferenceInfo(mbProdInfo,seqNo);
        }
         //根据option实际选项，操作值
           flowManagement.updateFlow(seqNo,"2","","");
    }
}