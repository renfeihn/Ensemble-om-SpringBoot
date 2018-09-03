package com.dcits.ensemble.om.service.dataAssembling;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.dcits.ensemble.om.model.dbmodel.MbProdType;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.model.prodFactory.MbProdInfo;
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
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    public void getAssembleData(MbProdInfo mbProdInfo,String reqNo){
    /*    List<OmProcessRecordHist> omProcessRecordHistList = omProcessRecordHistRepository.findByRecReqNo(reqNo);
        String fullName="";
        for(OmProcessRecordHist omProcessRecordHist : omProcessRecordHistList){
            fullName= omProcessRecordHist.getTableName();
            //组装prodType
            if(fullName.equals("MB_PROD_TYPE")) {
                prodTypeAssembling(mbProdInfo, omProcessRecordHist);
            } else
            //组装prodDefine
            if(fullName.equals("MB_PROD_DEFINE")){
                prodDefineAssembling(mbProdInfo, omProcessRecordHist);
            }else{
                eventAttrAssembling(mbProdInfo, omProcessRecordHist);
            }
            //组装eventAttr、组装eventPart
        }*/
    }
    //组装prodType
    public void prodTypeAssembling(MbProdInfo mbProdInfo,OmProcessRecordHist omProcessRecordHist){
        MbProdType mbProdType=mbProdInfo.getProdType();
/*        if(mbProdType.getProdType().equals(omProcessRecordHist.getPrimaryKeyvalue())){
            try {
                String  dataDui=new String(omProcessRecordHist.getDataDui(),"UTF-8");
                String keyValue=new String(omProcessRecordHist.getKeyValue(),"UTF-8");
                JSONObject jsonDataDui= JSON.parseObject(dataDui);
                JSONObject jsonKeyValue= JSON.parseObject(keyValue);
                jsonDataDui.putAll(jsonKeyValue);
                mbProdType=(MbProdType)JSON.toJavaObject(jsonDataDui,MbProdType.class);
                mbProdInfo.setProdType(mbProdType);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

        }*/
    }
    //组装prodDefine
    public void prodDefineAssembling(MbProdInfo mbProdInfo,OmProcessRecordHist omProcessRecordHist) {
/*        List<MbProdDefine> mbProdDefineList=mbProdInfo.getProdDefines();
        for(MbProdDefine mbProdDefine:mbProdDefineList){

        }*/
    }
    //组装eventAttr、eventPart
    public void eventAttrAssembling(MbProdInfo mbProdInfo,OmProcessRecordHist omProcessRecordHist) {
   /*     List<MbEventInfo> mbEventInfoList=mbProdInfo.getMbEventInfos();*/

    }

 }
