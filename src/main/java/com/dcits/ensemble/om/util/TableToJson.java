package com.dcits.ensemble.om.util;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.table.AttrValueBean;
import com.dcits.ensemble.om.service.paraTable.ParamTableService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ligan on 2018/11/15.
 */
@Service
public class TableToJson {
    @Resource
    public ParamTableService paramTableService;
    public JSONObject tableToJson() {
        List<Map> mbAttrTypeList= paramTableService.getTableInfo("MB_ATTR_TYPE");

        JSONObject jsonAttr=new JSONObject();
        for(Map attr: mbAttrTypeList){
            JSONObject jsonInfo=new JSONObject();
            String method=(String)attr.get("VALUE_METHOD");
            String columnType="";
            switch (method){
                case "FD":
                    columnType="input";
                    break;
                case "YN":
                    columnType="switch";
                    break;
                case "VL":
                case "RF":
                    columnType="select";
                    AttrValueBean AttrValueBean=getAttrValue((String)attr.get("ATTR_KEY"),method);
                    jsonInfo.put("valueScore",AttrValueBean.getValueScore());
                    if("RF".equals(method)) {
                        Map rfMap=new HashMap<>();
                        rfMap.put("tableName", AttrValueBean.getRfTable());
                        rfMap.put("columnCode", AttrValueBean.getRfColumn());
                        rfMap.put("columnDesc", AttrValueBean.getRfColumnDesc());
                        jsonInfo.put("valueScore",rfMap);
                    }
                    break;
            }
            jsonInfo.put("columnType",columnType);
            jsonInfo.put("valueMethod",method);
            jsonInfo.put("columnDesc",attr.get("ATTR_DESC"));
            jsonAttr.put((String)attr.get("ATTR_KEY"),jsonInfo);
        }
       return jsonAttr;
    }
    private AttrValueBean getAttrValue(String key,String valueMethod){
        List<Map> mbAttrValueList= paramTableService.getTableInfo("MB_ATTR_VALUE");
        AttrValueBean attrValueBean=new AttrValueBean();
        List valueScoreList=new ArrayList<>();
        for(Map attrValue : mbAttrValueList){
            if(key.equals((String) attrValue.get("ATTR_KEY"))){
            if("RF".equals(valueMethod)){
                String columnInfo=(String)attrValue.get("REF_COLUMNS");
                String[] columns= columnInfo.split(",");
                attrValueBean.setKey(key);
                attrValueBean.setRfTable((String) attrValue.get("REF_TABLE"));
                attrValueBean.setRfColumn(columns[0]);
                if(columns.length>1) {
                    attrValueBean.setRfColumnDesc(columns[1]);
                }
            }else if("VL".equals(valueMethod)){
                Map vlMap =new HashMap<>();
                vlMap.put("key",attrValue.get("ATTR_VALUE"));
                vlMap.put("value", attrValue.get("VALUE_DESC"));
                valueScoreList.add(vlMap);
            }
            }
        }
        if("VL".equals(valueMethod)){
            attrValueBean.setValueScore(valueScoreList);
        }
        return attrValueBean;
    }

}
