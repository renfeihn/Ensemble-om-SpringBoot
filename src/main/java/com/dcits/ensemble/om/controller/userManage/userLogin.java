package com.dcits.ensemble.om.controller.userManage;

import com.dcits.ensemble.om.service.userManage.WebUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by jiajt on 2018/8/27.
 */
@Controller

public class userLogin {
    @Autowired
    public WebUserService webUserService;
    @RequestMapping("/getUserMsg")
//@RequestParam(value="password",required=false)  String password, @RequestParam(value="username",required=false) String userName
    @CrossOrigin
    public @ResponseBody
    String getUserMsgByUserIs (HttpServletResponse response,@RequestBody Map map){
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userId = map.get("username").toString();
        String password = map.get("password").toString();
        boolean falg = webUserService.getUserMsgByUserId (userId,password);
        if(falg) {
            return "true";
        }else{
            return "false";
        }
    }
}
