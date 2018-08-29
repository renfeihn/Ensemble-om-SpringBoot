package com.dcits.ensembleom.controller.paraFlow;

import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.service.dataAssembling.ProdDataAssembling;
import com.dcits.ensembleom.service.prodFactory.MbProdInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by ligan on 2018/8/24.
 */
@Controller
public class ApplicationAction {
    /**
     * 用户暂存时申请订单号
     * 在操作流程记录表中储存用户操作信息
     * @param response
     * @param prodType
     * @return
     */
    @Resource
    public ProdDataAssembling prodDataAssembling;
    @Resource
    public MbProdInfoService mbProdInfoService;
    @RequestMapping("/application/{prodType}")
    public @ResponseBody
    MbProdInfo application(HttpServletResponse response,@PathVariable("prodType") String prodType) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        MbProdInfo mbProdInfo=mbProdInfoService.getProdInfo(prodType);
        prodDataAssembling.getAssembleData(mbProdInfo,"1506482712346AQVQV");
        return mbProdInfo;
    }
}
