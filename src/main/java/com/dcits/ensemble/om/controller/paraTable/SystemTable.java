package com.dcits.ensemble.om.controller.paraTable;
import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.repository.system.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by jiajt on 2018/11/21.
 */
@Api(value = "/getSysTable", tags = "获取用户，菜单，角色，权限表信息")
@Controller
public class SystemTable {
    @Resource
    private OmMenuRepository omMenuRepository;
    @Resource
    private OmRoleRepository omRoleRepository;
    @Resource
    private OmUserRepository omUserRepository;
    @Resource
    private OmMenuRoleRepository omMenuRoleRepository;
    @Resource
    private OmUserRoleRepository omUserRoleRepository;
    @Resource
    private OmProdPermDefRepository omProdPermDefRepository;
    @Resource
    private OmParamPermDefRepository omParamPermDefRepository;
    @ApiOperation(value = "系统表信息", notes = "获取用户，菜单，角色，权限表信息")
    @RequestMapping("/getSysTable")
    @ResponseBody
    public Result getSysTable(HttpServletResponse response, @RequestParam(value = "tableName", required = true) String tableName) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        Map responseMap = new HashMap<>();
        //1.根据表名获取参数列信息
        if("OM_MENU".equals(tableName)) {
            responseMap.put("columnInfo", omMenuRepository.findAll());
        }
        if("OM_ROLE".equals(tableName)) {
            responseMap.put("columnInfo", omRoleRepository.findAll());
        }
        if("OM_USER".equals(tableName)) {
            responseMap.put("columnInfo", omUserRepository.findAll());
        }
        if("OM_MENU_ROLE".equals(tableName)) {
            responseMap.put("columnInfo", omMenuRoleRepository.findAll());
        }
        if("OM_USER_ROLE".equals(tableName)) {
            responseMap.put("columnInfo", omUserRoleRepository.findAll());
        }
        if("OM_PROD_PERM_DEF".equals(tableName)) {
            responseMap.put("columnInfo", omProdPermDefRepository.findAll());
        }
        if("OM_PARAM_PERM_DEF".equals(tableName)) {
            responseMap.put("columnInfo", omParamPermDefRepository.findAll());
        }
        return ResultUtils.success(responseMap);
    }
}