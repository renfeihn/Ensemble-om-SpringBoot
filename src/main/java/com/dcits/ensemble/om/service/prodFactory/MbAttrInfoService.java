package com.dcits.ensemble.om.service.prodFactory;

import com.dcits.ensemble.om.model.dbmodel.MbAttrType;
import com.dcits.ensemble.om.model.dbmodel.MbAttrValue;
import com.dcits.ensemble.om.model.prodFactory.MbColumnInfo;
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
