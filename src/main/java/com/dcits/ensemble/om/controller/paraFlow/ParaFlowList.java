package com.dcits.ensemble.om.controller.paraFlow;

import com.alibaba.fastjson.JSON;
import com.dcits.ensemble.om.model.dbmodel.OmProcessInfo;
import com.dcits.ensemble.om.model.dbmodel.OmProcessManagement;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessCombinationRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessInfoRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessManagementRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/8/28.
 */
@Controller
@CrossOrigin
public class ParaFlowList {
    @Resource
    OmProcessCombinationRepository omProcessCombinationRepository;
    @Resource
    OmProcessInfoRepository omProcessInfoRepository;
    @Resource
    OmProcessManagementRepository omProcessManagementRepositorys;
    //获取交易流程信息
    @RequestMapping("/reviewList")
    public @ResponseBody
    String getFlowList(HttpServletResponse response){
        List<OmProcessManagement> omProcessManagementList =omProcessManagementRepositorys.findByCurrentStatus("1");
        List<Map> resultList=new ArrayList<>();
       for(OmProcessManagement omProcessManagement:omProcessManagementList){
           Map<String,Object> infoMap=new HashMap<>();
           OmProcessInfo omProcessInfo=omProcessInfoRepository.findByReqNoAndOperatorNoAndOperatorType(omProcessManagement.getReqNo(), BigDecimal.ONE, "1");
           infoMap.put("flowManage",omProcessManagement);
           infoMap.put("flowInfo",omProcessInfo);
           resultList.add(infoMap);
       }
      return JSON.toJSONString(resultList);
    }
}
