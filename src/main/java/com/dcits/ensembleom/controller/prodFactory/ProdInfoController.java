package com.dcits.ensembleom.controller.prodFactory;

import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.service.prodFactory.MbProdInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;

@Controller
public class ProdInfoController {

    @Autowired
     public   MbProdInfoService mbProdInfoService;

    @RequestMapping("/getProdInfo/{prodType}")
    public @ResponseBody
    String getProdInfo(HttpServletResponse response,@PathVariable("prodType") String prodType) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        MbProdInfo mbProdInfo=mbProdInfoService.getProdInfo(prodType);
       return mbProdInfo.toString();
    }
    @RequestMapping("/saveProdInfo")
    public void saveProdInfo(MbProdType mbProdType) {

    }
}