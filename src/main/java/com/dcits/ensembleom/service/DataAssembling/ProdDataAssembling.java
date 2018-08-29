package com.dcits.ensembleom.service.DataAssembling;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.*;
import com.dcits.ensembleom.model.prodFactory.MbEventInfo;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * 产品参数组装
 * Created by ligan on 2018/8/24.
 */
@Service
public class ProdDataAssembling {
    @Autowired
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    public void getAssembleData(MbProdInfo mbProdInfo,String reqNo){
        List<ParaDifferenceCheckPublish> paraDifferenceCheckPublishList=paraDifferenceCheckPublishRepository.findByReqNo(reqNo);
        String fullName="";
        for(ParaDifferenceCheckPublish paraDifferenceCheckPublish:paraDifferenceCheckPublishList){
            fullName=paraDifferenceCheckPublish.getTableFullName();
            //组装prodType
            if(fullName.equals("MB_PROD_TYPE")) {
                prodTypeAssembling(mbProdInfo, paraDifferenceCheckPublish);
            } else
            //组装prodDefine
            if(fullName.equals("MB_PROD_DEFINE")){
                prodDefineAssembling(mbProdInfo,paraDifferenceCheckPublish);
            }else{
                eventAttrAssembling(mbProdInfo,paraDifferenceCheckPublish);
            }
            //组装eventAttr、组装eventPart
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
    //组装prodDefine
    public void prodDefineAssembling(MbProdInfo mbProdInfo,ParaDifferenceCheckPublish paraDifferenceCheckPublish) {
/*        List<MbProdDefine> mbProdDefineList=mbProdInfo.getProdDefines();
        for(MbProdDefine mbProdDefine:mbProdDefineList){

        }*/
    }
    //组装eventAttr、eventPart
    public void eventAttrAssembling(MbProdInfo mbProdInfo,ParaDifferenceCheckPublish paraDifferenceCheckPublish) {
        List<MbEventInfo> mbEventInfoList=mbProdInfo.getMbEventInfos();

    }

 }
