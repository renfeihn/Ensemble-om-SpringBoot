package com.dcits.ensembleom.controller.prodFactory;

import com.alibaba.fastjson.JSON;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.repository.prodFactory.MbProdTypeRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/28.
 */
@Controller
public class ProdTypeListController {
    @Resource
    private MbProdTypeRepository mbProdTypeRepository;
    @CrossOrigin
    @RequestMapping("/getProdListByClass")
    public
    @ResponseBody
    String getProdList(HttpServletResponse response,@RequestBody Map map){
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String prodClass=(String)map.get("prodClass");
        List<MbProdType> mbProdTypeList= mbProdTypeRepository.findByProdClass(prodClass);
        return  JSON.toJSONString(mbProdTypeList);
    }
}
