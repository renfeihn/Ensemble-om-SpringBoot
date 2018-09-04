package com.dcits.ensemble.om.controller.userManage;

import com.dcits.ensemble.om.service.userManage.WebUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by jiajt on 2018/8/27.
 */
@Api(value = "/getUserMsg", tags = "用户模块")
@Controller
public class UserLogin {
    @Autowired
    public WebUserService webUserService;

    @ApiOperation(value = "用户登录验证", notes = "用户登录验证")
    @RequestMapping("/getUserMsg")
    @CrossOrigin
    @ResponseBody
    public String getUserMsgByUserIs(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userId = map.get("username").toString();
        String password = map.get("password").toString();
        boolean flag = webUserService.getUserMsgByUserId(userId, password);
        if (flag) {
            return "true";
        } else {
            return "false";
        }
    }
}
