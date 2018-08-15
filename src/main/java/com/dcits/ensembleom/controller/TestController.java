package com.dcits.ensembleom.controller;

import com.dcits.ensembleom.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.dbmodel.User;
import com.dcits.ensembleom.repository.ParaDifferenceRepository;
import com.dcits.ensembleom.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class TestController {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ParaDifferenceRepository paraDifferenceRepository;

    @RequestMapping("/getUser")
    public @ResponseBody
    List<User> searchUser(HttpServletResponse response) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        List<User> result = this.userRepository.findAll();
        return result;
    }
    @RequestMapping("/getDiffInfo/{tableName}")
    public @ResponseBody
    List<ParaDifferenceCheckPublish> getDiffInfo(HttpServletResponse response,@PathVariable("tableName") String tableName) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        List<ParaDifferenceCheckPublish> result = this.paraDifferenceRepository.searchDiffByTableName(tableName);
        return result;
    }
}