package com.dcits.ensembleom.controller;

import com.dcits.ensembleom.model.User;
import com.dcits.ensembleom.model.dbmodel.OmOperationRecords;
import com.dcits.ensembleom.repository.UserRepository;
import com.dcits.ensembleom.repository.paraFlow.OmOperationRecordsRepository;
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
    private OmOperationRecordsRepository omOperationRecordsRepository;

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
    String getDiffInfo(HttpServletResponse response,@PathVariable("tableName") String tableName) {
        response.addHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        List<OmOperationRecords> result = this.omOperationRecordsRepository.searchDiffByTableName(tableName);
        return result.toString();
    }
}