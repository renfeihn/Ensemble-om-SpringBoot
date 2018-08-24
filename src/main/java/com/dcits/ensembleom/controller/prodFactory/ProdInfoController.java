package com.dcits.ensembleom.controller.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.MbProdDefine;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.model.prodFactory.MbEventInfo;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.ParaDifferenceRepository;
import com.dcits.ensembleom.repository.UserRepository;
import com.dcits.ensembleom.repository.prodFactory.MbProdDefineRepository;
import com.dcits.ensembleom.repository.prodFactory.MbProdTypeRepository;
import com.dcits.ensembleom.service.MbProdInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

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