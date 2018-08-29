package com.dcits.ensembleom.service.paraFlow;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.dbmodel.ParaTransactionTableOrg;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import com.dcits.ensembleom.repository.paraFlow.ParaTransactionTableOrgRepository;
import com.dcits.ensembleom.util.ResourcesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.UnsupportedEncodingException;

/**
 * Created by ligan on 2018/8/27.
 */
@Service
public class DifferenceInfo {
    @Resource
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    @Resource
    private ParaTransactionTableOrgRepository paraTransactionTableOrgRepository;
    //记录产品流程信息
   public void insertProdDifferenceInfo(MbProdInfo mbProdInfo,String reqNo){

       //变更信息以blob形式存入表

   }
    //修改操作流程
    public void updateProdDifferenceInfo(MbProdInfo mbProdInfo,String reqNo){

    }
    //申请一个单号，单号落地在para_transaction_table_org
    public String insertTableOrg(String reqNo,String tranId){
        String seqNo= ResourcesUtils.getDateTimeUuId();
        ParaTransactionTableOrg paraTransactionTableOrg=new ParaTransactionTableOrg();
        paraTransactionTableOrg.setReqNo(reqNo);
        paraTransactionTableOrg.setReqNo(seqNo);
        paraTransactionTableOrg.setSubTransactionId(tranId);
        paraTransactionTableOrgRepository.saveAndFlush(paraTransactionTableOrg);
        return seqNo;
    }
    //拿新申请的单号组织操作数据存入paraDifferenceCheckPublish表
    public void saveProdParaDifference(String reqNo,JSONObject dataDui){
        ParaDifferenceCheckPublish paraDifferenceCheckPublish=new ParaDifferenceCheckPublish();
        paraDifferenceCheckPublish.setTableFullName("MB_PROD_TYPE");
        byte[] tmpDataDui=dataDui.getBytes("UTF-8");
        //1.获取对象主键
        JSONObject keyValue=new JSONObject();
        keyValue.put("prodType",dataDui.get("prodType"));
        String primaryKey=dataDui.get("prodType").toString();

        //2.根据主键信息查询库中真实数据
    }
}
