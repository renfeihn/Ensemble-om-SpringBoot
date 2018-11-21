package com.dcits.ensemble.om.service.common;

import com.dcits.ensemble.om.model.dbmodel.system.OmMenu;
import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRole;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/11/21.
 */
public class MenuService {
    //组装菜单
    public static Map assembleMenuItem(OmMenu omMenu){
        Map reAssembleMenu=new HashMap<>();
        //判断菜单是哪一级菜单
        switch (omMenu.getMenuLevel()){
            //1级菜单
            case "1":
                reAssembleMenu.put("header",omMenu.getMenuName());
                break;
            //2级菜单
            case "2":
                reAssembleMenu.put("title",omMenu.getMenuName());
                reAssembleMenu.put("icon",omMenu.getMenuIcon());
                reAssembleMenu.put("name",omMenu.getMenuName());
                break;
            //2级菜单
            case "3":
                reAssembleMenu.put("title",omMenu.getMenuName());
                reAssembleMenu.put("icon",omMenu.getMenuIcon());
                reAssembleMenu.put("name",omMenu.getMenuName());
                reAssembleMenu.put("component",omMenu.getMenuComponent());
                break;
        }
        reAssembleMenu.put("menuId",omMenu.getMenuName());
        return reAssembleMenu;
    }
    //是否包含menu
    public static boolean hasRole( List<OmMenuRole> omMenuRoleList,String menuId){
        for(OmMenuRole omMenuRoleItem: omMenuRoleList){
            if(menuId.equals(omMenuRoleItem.getMenuId())){
                return true;
            }
        }
        return false;
    }
    //包含子
    public static Map hasSumRole( List<OmMenuRole> omMenuRoleList,List<OmMenu> omMenuList,String role){
        Map map=new HashMap<>();
        boolean flag=false;
        int items=0;
        for(OmMenu omMenuItem:omMenuList){
          if(role.equals( omMenuItem.getMenuParentId())) {
              if(hasRole(omMenuRoleList,omMenuItem.getMenuId())){
                  items++;
              }
          }
        }

        if(items!=0){
            flag = true;
        }
        map.put("num",items);
        map.put("flag",flag);
        return map;
    }
}
