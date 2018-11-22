package com.dcits.ensemble.om.controller.common;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.model.dbmodel.system.OmMenu;
import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRole;
import com.dcits.ensemble.om.model.dbmodel.system.OmUser;
import com.dcits.ensemble.om.model.dbmodel.system.OmUserRole;
import com.dcits.ensemble.om.repository.system.OmMenuRepository;
import com.dcits.ensemble.om.repository.system.OmMenuRoleRepository;
import com.dcits.ensemble.om.repository.system.OmUserRepository;
import com.dcits.ensemble.om.repository.system.OmUserRoleRepository;
import com.dcits.ensemble.om.service.common.MenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/11/21.
 */
@Controller
public class MenuListController {
    @Resource
    private OmMenuRepository omMenuRepository;
    @Resource
    private OmMenuRoleRepository omMenuRoleRepository;
    @Resource
    private OmUserRoleRepository omUserRoleRepository;
    @RequestMapping("/getMenuList")
    @ResponseBody
    public Result getMenuList(HttpServletResponse response, @RequestBody Map map){
        String userId=(String) map.get("userId");
        List<Map> reMenu=new ArrayList<>();
        List<OmMenu> omMenuList=omMenuRepository.findAll();
        OmUserRole omUserRole=omUserRoleRepository.findByUserId(userId);
        if(omUserRole==null){
            return  ResultUtils.success(reMenu);
        }
        List<OmMenuRole> omMenuRoleList=omMenuRoleRepository.findByRoleId(omUserRole.getRoleId());
        int sumNum=0;
        int reNum =0;
        List<Map> sumList=new ArrayList<>();
        Map sumMenu=new HashMap<>();
        for(OmMenu omMenuItem:omMenuList){
                if(MenuService.hasRole(omMenuRoleList,omMenuItem.getMenuId())){
                 Map reAssembleMap= MenuService.assembleMenuItem(omMenuItem);
                 if(omMenuItem.getMenuLevel().equals("2")){
                     Map hasSumRole=MenuService.hasSumRole(omMenuRoleList, omMenuList, omMenuItem.getMenuId());
                     if(!(boolean)hasSumRole.get("flag")){
                         reMenu.add(reAssembleMap);
                         continue;
                     }
                     reNum=(int)hasSumRole.get("num");
                     sumMenu=reAssembleMap;
                 }else if(omMenuItem.getMenuLevel().equals("3")){
                     //对子菜单进行加载
                     sumList.add(reAssembleMap);
                     sumNum++;
                     if(reNum==sumNum){
                         sumMenu.put("items",sumList);
                         reMenu.add(sumMenu);
                         sumList=new ArrayList<>();
                         sumNum=0;
                         reNum=0;
                     }
                 }else{
                     reMenu.add(reAssembleMap);
                 }
                }
        }
        return  ResultUtils.success(reMenu);
    }
}
