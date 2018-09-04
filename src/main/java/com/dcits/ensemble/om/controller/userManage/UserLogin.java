package com.dcits.ensemble.om.controller.userManage;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.intercept.LoginIntercept;
import com.dcits.ensemble.om.model.RequestBean;
import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by jiajt on 2018/8/27.
 */
@Api(value = "/login", tags = "用户模块")
@Controller
public class UserLogin {
    private static final Logger logger = LoggerFactory.getLogger(UserLogin.class);
    @Resource
    private WebUserRespository webUserRespository;

    @ApiOperation(value = "用户登录验证", notes = "用户登录验证")
    @RequestMapping("/login")
    @CrossOrigin
    @ResponseBody
    public String getUserMsgByUserIs(HttpServletResponse response, @RequestParam(value = "userName", required = false) String userName) {

        if (userName == null) {
            return "请重新登录！";
        }

        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        List<WebUser> webUser = webUserRespository.findByUserId(userName);
        WebUser user = webUser.get(0);
        logger.info(webUser.toString());
        Subject currentUser = SecurityUtils.getSubject();
        logger.info(new Md5Hash(user.getPassword(), userName).toHex());
        //String pwd =new Md5Hash(user.getPassword(), user.getUserId()).toHex();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserId(), user.getPassword());
        currentUser.login(token);
        return JSON.toJSONString(webUser);
    }
}
