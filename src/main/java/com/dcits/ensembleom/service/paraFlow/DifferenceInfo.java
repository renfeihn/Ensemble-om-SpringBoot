package com.dcits.ensembleom.service.paraFlow;

import com.alibaba.fastjson.JSONObject;
import com.dcits.ensembleom.model.dbmodel.OmOperationRecords;
import com.dcits.ensembleom.model.dbmodel.OmProcessInfo;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.OmOperationRecordsRepository;
import com.dcits.ensembleom.repository.paraFlow.OmProcessInfoRepository;
import com.dcits.ensembleom.util.ResourcesUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by ligan on 2018/8/27.
 */
@Service
public class DifferenceInfo {
    @Resource
    private OmOperationRecordsRepository omOperationRecordsRepository;
    @Resource
    private OmProcessInfoRepository omProcessInfoRepository;
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
        OmProcessInfo omProcessInfo =new OmProcessInfo();
        omProcessInfo.setReqNo(reqNo);
        omProcessInfo.setReqNo(seqNo);
        omProcessInfo.setSubTransactionId(tranId);
        omProcessInfoRepository.saveAndFlush(omProcessInfo);
        return seqNo;
    }
    //拿新申请的单号组织操作数据存入paraDifferenceCheckPublish表
    public void saveProdParaDifference(String reqNo,JSONObject dataDui){
        OmOperationRecords omOperationRecords =new OmOperationRecords();
        omOperationRecords.setTableFullName("MB_PROD_TYPE");
        byte[] tmpDataDui=dataDui.getBytes("UTF-8");
        //1.获取对象主键
        JSONObject keyValue=new JSONObject();
        keyValue.put("prodType",dataDui.get("prodType"));
        String primaryKey=dataDui.get("prodType").toString();

        //2.根据主键信息查询库中真实数据
    }
}
