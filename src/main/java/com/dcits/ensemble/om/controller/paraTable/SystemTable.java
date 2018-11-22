package com.dcits.ensemble.om.controller.paraTable;
import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.repository.base.BaseTableRepositoryImpl;
import com.dcits.ensemble.om.repository.base.SystemTableRepositoryImpl;
import com.dcits.ensemble.om.repository.system.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Array;
import java.util.*;

import com.dcits.ensemble.om.util.ResourcesUtils;

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
    @Resource
    private SystemTableRepositoryImpl systemTableRepositoryImpl;
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


    /*
    * 用户，菜单，角色，权限表信息保存
    * */
    @RequestMapping("/saveSysTable")
    @ResponseBody
    public Result saveTable(HttpServletResponse response, @RequestBody Map map) {
        response.setHeader("Content-Type", "application/json;charset=UTF-8");
        String userName = (String) map.get("userName");
        String tableName = (String) map.get("tableName");
        String  keySet =  map.get("keySet").toString();
        List list = (List) map.get("data");

        //获取最新数据
        for(int i=0; i<list.size(); i++) {
            Map dataMap = (Map)list.get(i);
            Map data = new HashMap();
            //删除数据时候 上送数据newData为空  oldData为原始数据
            if("D".equals(dataMap.get("optType").toString())){
                data = (Map) dataMap.get("oldData");
            }else{
                data = (Map) dataMap.get("newData");
            }
            //获取主键对象
            JSONObject pkValue=new JSONObject();
            for(int j=0;j<keySet.split(",").length;j++){
                pkValue.put(keySet.split(",")[j].toString(),data.get(ResourcesUtils.underline2Camel(keySet.split(",")[j].toString())));
            }
            //更具数据操作状态  进行数据处理
            if("I".equals(dataMap.get("optType").toString())){
                systemTableRepositoryImpl.insertTable(tableName,data);
            }
            if("D".equals(dataMap.get("optType").toString())){
                systemTableRepositoryImpl.deleteTable(tableName,data,pkValue);
            }
            if("U".equals(dataMap.get("optType").toString())){
                systemTableRepositoryImpl.updateTable(tableName,data,pkValue);
            }
        }
        return null;
    }
}