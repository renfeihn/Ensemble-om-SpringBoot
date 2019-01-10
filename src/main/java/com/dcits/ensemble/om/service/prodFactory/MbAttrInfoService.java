package com.dcits.ensemble.om.service.prodFactory;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.MbAttrType;
import com.dcits.ensemble.om.model.dbmodel.MbAttrValue;
import com.dcits.ensemble.om.model.prodFactory.MbColumnInfo;
import com.dcits.ensemble.om.model.table.AttrValueBean;
import com.dcits.ensemble.om.repository.prodFactory.MbAttrTypeRepository;
import com.dcits.ensemble.om.repository.prodFactory.MbAttrValueRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MbAttrInfoService {
    @Resource
    private MbAttrValueRepository mbAttrValueRepository;
    @Resource
    private MbAttrTypeRepository mbAttrTypeRepository;
    public JSONObject getAttrInfo(){
        JSONObject resultData=new JSONObject();
        List<MbAttrType> attrTypeList=mbAttrTypeRepository.findAll();
        for(MbAttrType mbAttrType:attrTypeList){
            JSONObject jsonInfo=new JSONObject();
            String method=mbAttrType.getValueMethod();
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
                    AttrValueBean attrValueBean=getAttrValue(mbAttrType.getAttrKey(),method);
                    jsonInfo.put("valueScore",attrValueBean.getValueScore());
                    if("RF".equals(method)) {
                        Map rfMap=new HashMap<>();
                        rfMap.put("tableName", attrValueBean.getRfTable());
                        rfMap.put("columnCode", attrValueBean.getRfColumn());
                        rfMap.put("columnDesc", attrValueBean.getRfColumnDesc());
                        jsonInfo.put("valueScore",rfMap);
                    }
                    break;
            }
            jsonInfo.put("columnType",columnType);
            jsonInfo.put("valueMethod",method);
            jsonInfo.put("attrType",mbAttrType.getAttrType());
            jsonInfo.put("columnDesc",mbAttrType.getAttrDesc());
            resultData.put(mbAttrType.getAttrKey(),jsonInfo);
        }
        return resultData;
    }
    private AttrValueBean getAttrValue(String key,String valueMethod){
        List<MbAttrValue> mbAttrValueList= mbAttrValueRepository.findAllByAttrKey(key);
        AttrValueBean attrValueBean=new AttrValueBean();
        List valueScoreList=new ArrayList<>();
        for(MbAttrValue attrValue : mbAttrValueList){
                if("RF".equals(valueMethod)){
                    String columnInfo=attrValue.getRefColumns();
                    String[] columns= columnInfo.split(",");
                    attrValueBean.setKey(key);
                    attrValueBean.setRfTable(attrValue.getRefTable());
                    attrValueBean.setRfColumn(columns[0]);
                    if(columns.length>1) {
                        attrValueBean.setRfColumnDesc(columns[1]);
                    }
                }else if("VL".equals(valueMethod)){
                    Map vlMap =new HashMap<>();
                    vlMap.put("key",attrValue.getAttrValue());
                    vlMap.put("value", attrValue.getValueDesc());
                    valueScoreList.add(vlMap);
                }
        }
        if("VL".equals(valueMethod)){
            attrValueBean.setValueScore(valueScoreList);
        }
        return attrValueBean;
    }
    public MbColumnInfo getColumnInfo(String attrKey){
        MbColumnInfo mbColumnInfo=new MbColumnInfo();
        MbAttrType mbAttrType=mbAttrTypeRepository.findByAttrKey(attrKey);
        if(mbAttrType==null){
            return mbColumnInfo;
        }
        String valueMethod=mbAttrType.getValueMethod();
        mbColumnInfo.setColumnDesc(mbAttrType.getAttrDesc());
        mbColumnInfo.setValueMethod(valueMethod);
        mbColumnInfo.setIsMultiSelect(mbAttrType.getSetValueFlag());
        if(valueMethod.equals("VL")){
            List<MbAttrValue> mbAttrValueList=mbAttrValueRepository.findAllByAttrKey(attrKey);
            List valueScoreVl=new ArrayList();
            for(MbAttrValue mbAttrValue: mbAttrValueList){
               Map<String, String > map= new HashMap();
               map.put("key",mbAttrValue.getAttrValue());
               map.put("value",mbAttrValue.getAttrValue()+"-"+mbAttrValue.getValueDesc());
               valueScoreVl.add(map);
            }
            mbColumnInfo.setValueScoreVl(valueScoreVl);
            mbColumnInfo.setColumnType("select");
        }
        if(valueMethod.equals("RF")){
            MbAttrValue mbAttrValue=mbAttrValueRepository.findByAttrKey(attrKey);
            Map<String, String > valueScoreRf= new HashMap();
            String  refColumn=mbAttrValue.getRefColumns();
            int split=refColumn.indexOf(",");
            String column=refColumn.substring(0,split);
            String columnDesc=refColumn.substring(split+1);
            valueScoreRf.put("tableName",mbAttrValue.getRefTable());
            valueScoreRf.put("columnCode",column);
            valueScoreRf.put("columnDesc",columnDesc);
            mbColumnInfo.setValueScoreRf(valueScoreRf);
            mbColumnInfo.setColumnType("select");
        }
        if(valueMethod.equals("FD")){
            mbColumnInfo.setColumnType("input");
        }
        if(valueMethod.equals("YN")){
            mbColumnInfo.setColumnType("switch");
        }
        return  mbColumnInfo;
    }
}
