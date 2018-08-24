package com.dcits.ensembleom.service.DataAssembling;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.MbEventType;
import com.dcits.ensembleom.model.dbmodel.MbProdDefine;
import com.dcits.ensembleom.model.dbmodel.MbProdType;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class ProdDataAssembling {
    @Autowired
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    public void getAssembleData(MbProdInfo mbProdInfo,String reqNo){
        List<ParaDifferenceCheckPublish> paraDifferenceCheckPublishList=paraDifferenceCheckPublishRepository.findByReqNo(reqNo);
        for(ParaDifferenceCheckPublish paraDifferenceCheckPublish:paraDifferenceCheckPublishList){
            //组装prodType
            if(paraDifferenceCheckPublish.getTableFullName().equals("MB_PROD_TYPE"))
            prodTypeAssembling(mbProdInfo,paraDifferenceCheckPublish);
            //组装prodDefine
            //组装eventAttr
            //组装eventPart
        }
    }
    //组装prodType
    public void prodTypeAssembling(MbProdInfo mbProdInfo,ParaDifferenceCheckPublish paraDifferenceCheckPublish){
        MbProdType mbProdType=mbProdInfo.getProdType();
        if(mbProdType.getProdType().equals(paraDifferenceCheckPublish.getPrimaryKeyvalue())){
            try {
                String  dataDui=new String(paraDifferenceCheckPublish.getDataDui(),"UTF-8");
                String keyValue=new String(paraDifferenceCheckPublish.getKeyValue(),"UTF-8");
                JSONObject jsonDataDui= JSON.parseObject(dataDui);
                JSONObject jsonKeyValue= JSON.parseObject(keyValue);
                jsonDataDui.putAll(jsonKeyValue);
                mbProdType=(MbProdType)JSON.toJavaObject(jsonDataDui,MbProdType.class);
                mbProdInfo.setProdType(mbProdType);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

        }
    }
    //组装eventAttr
    public void prodDefineAssembling(MbProdInfo mbProdInfo,ParaDifferenceCheckPublish paraDifferenceCheckPublish) {
        List<MbProdDefine> mbProdDefineList=mbProdInfo.getProdDefines();
        for(MbProdDefine mbProdDefine:mbProdDefineList){
          
        }
    }
 }
