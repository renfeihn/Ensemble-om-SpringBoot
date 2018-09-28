package com.dcits.ensemble.om.controller.common;

import com.dcits.ensemble.om.controller.model.Result;
import com.dcits.ensemble.om.controller.model.ResultUtils;
import com.dcits.ensemble.om.repository.base.PkListRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/9/28.
 */
@Controller
public class PkListController {
    @Resource
    public PkListRepository pkListRepository;
    @RequestMapping("/getPkList")
    @ResponseBody
    public Result getPkList(HttpServletResponse response, @RequestBody Map map) {
        String pkInfo=(String)map.get("pkInfo");
        int begin=pkInfo.indexOf(".");
        int beginSec=pkInfo.indexOf("|");
        String tableName=pkInfo.substring(0, begin);
        String column=pkInfo.substring(begin+1,beginSec);
        String columnDesc=pkInfo.substring(beginSec+1);
        List<Map> columnMap= pkListRepository.getPkList(tableName,column,columnDesc);
        return  ResultUtils.success(columnMap);
    }
}
