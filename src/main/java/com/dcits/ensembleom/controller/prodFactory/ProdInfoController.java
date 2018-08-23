package com.dcits.ensembleom.controller.prodFactory;

import com.dcits.ensembleom.model.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.repository.ParaDifferenceRepository;
import com.dcits.ensembleom.repository.UserRepository;
import com.dcits.ensembleom.repository.prodFactory.MbProdTypeRepository;
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
    private MbProdTypeRepository mbProdTypeRepository;
    @Autowired
    private ParaDifferenceRepository paraDifferenceRepository;

    @RequestMapping("/getProdInfo/{prodType}")
    public @ResponseBody
    String getProdInfo(HttpServletResponse response,@PathVariable("prodType") String prodType) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        MbProdType mbProdType=mbProdTypeRepository.findByProdType(prodType);
       return mbProdType.toString();
    }
    @RequestMapping("/saveProdInfo")
    public void saveProdInfo(MbProdType mbProdType) {
        mbProdTypeRepository.saveAndFlush(mbProdType);
    }
}