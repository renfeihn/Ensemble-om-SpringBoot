package com.dcits.ensemble.om.controller.common;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/11/21.
 */
@Controller
public class MenuListController {
    @RequestMapping("/getPkListColumnRf")
    @ResponseBody
    public Result getMenuList(HttpServletResponse response){
        List<Map> reMenu=new ArrayList<>();

        return  ResultUtils.success();
    }
}
