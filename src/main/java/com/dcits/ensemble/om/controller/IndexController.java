package com.dcits.ensemble.om.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * @Author chengliang
 * @Description //TODO
 * @Date 2018-09-03 10:37
 * @Version 1.0
 **/
@RestController
public class IndexController {
    @RequestMapping("/")
    public String index(HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        return "Ensemble-OM后台";
    }

}
