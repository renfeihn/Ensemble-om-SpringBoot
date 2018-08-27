package com.dcits.ensembleom.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.model.dbmodel.ParaCircleFlow;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaCircleFlowRepository;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import com.dcits.ensembleom.service.paraFlow.FlowManagement;
import com.dcits.ensembleom.service.prodFactory.MbProdInfoService;
import com.dcits.ensembleom.util.ResourcesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ProdInfoController {

    @Autowired
     private  MbProdInfoService mbProdInfoService;
    @Autowired
    private ParaCircleFlowRepository paraCircleFlowRepository;
    @Autowired
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    @RequestMapping("/getProdInfo")
    public @ResponseBody
    String getProdInfo(HttpServletResponse response,@RequestParam(value="prodType",required=true) String prodType) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap=new HashMap<>();
        MbProdInfo mbProdInfo=mbProdInfoService.getProdInfo(prodType);
        ParaCircleFlow paraCircleFlow= paraCircleFlowRepository.findByTransactionId("MbProdType");
        List<ParaDifferenceCheckPublish> paraDifferenceCheckPublishList=null;
        if(paraCircleFlow!=null&&paraCircleFlow.getReqNo()!=null){
            paraDifferenceCheckPublishList  =paraDifferenceCheckPublishRepository.searchDiffByTableName(paraCircleFlow.getReqNo());
        }
        responseMap.put("prodInfo",mbProdInfo.toString());
        if(paraDifferenceCheckPublishList!=null)
        responseMap.put("diff",paraDifferenceCheckPublishList);
       return mbProdInfo.toString();
    }
    @RequestMapping("/saveProdInfo")
    public void saveProdInfo(HttpServletResponse response,@RequestParam(value="prodType",required=true) JSONObject prodInfo) {
      MbProdInfo  mbProdInfo=(MbProdInfo) JSON.toJavaObject(prodInfo, MbProdInfo.class);
      mbProdInfoService.saveProdInfo(mbProdInfo);
    }
}