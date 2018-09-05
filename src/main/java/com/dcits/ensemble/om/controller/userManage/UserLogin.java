package com.dcits.ensemble.om.controller.userManage;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultCode;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.service.userManage.WebUserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

/**
 * Created by jiajt on 2018/8/27.
 */
@Api(value = "/user/login", tags = "用户模块")
@RestController
public class UserLogin {
    private static final Logger logger = LoggerFactory.getLogger(UserLogin.class);

    @Autowired
    private WebUserService webUserService;

    @ApiOperation(value = "用户登录验证", notes = "用户登录验证")
    @RequestMapping("/user/login")
    @CrossOrigin
    public Result login(HttpServletResponse response, @RequestParam(value = "userId", required = true) String userId,
                        @RequestParam(value = "password", required = true) String password) {
        if (StringUtils.isEmpty(userId)) {
            return ResultUtils.warn(ResultCode.WARN, "请重新登录！");
        }
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        WebUser webUser = webUserService.login(userId);

        if (webUser == null) {
            return ResultUtils.warn(ResultCode.WARN, "用户名或密码不正确!");
        }
        String pwd=new Md5Hash(password, userId).toHex();
        if (!webUser.getPassword().equals(pwd)) {
            return ResultUtils.warn(ResultCode.WARN, "用户名或密码不正确!");
        }
        return ResultUtils.success(JSON.toJSONString(webUser));
    }
}
