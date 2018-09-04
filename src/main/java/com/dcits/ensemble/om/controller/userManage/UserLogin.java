package com.dcits.ensemble.om.controller.userManage;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.model.RequestBean;
import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by jiajt on 2018/8/27.
 */
@Api(value = "/userLoginCheck", tags = "用户模块")
@Controller
public class UserLogin {
    @Resource
    private WebUserRespository webUserRespository;

    @ApiOperation(value = "用户登录验证", notes = "用户登录验证")
    @RequestMapping("/userLoginCheck")
    @CrossOrigin
    @ResponseBody
    public String getUserMsgByUserIs(HttpServletResponse response, @RequestBody RequestBean requestBean) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map map = requestBean.getBody();
        String userId = map.get("username").toString();
        List<WebUser> webUser = webUserRespository.findByUserId(userId);
        return JSON.toJSONString(webUser);
    }
}
