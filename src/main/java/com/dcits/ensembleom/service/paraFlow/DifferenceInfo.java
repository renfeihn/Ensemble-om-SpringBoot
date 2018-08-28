package com.dcits.ensembleom.service.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.model.prodFactory.MbProdInfo;
import com.dcits.ensembleom.repository.paraFlow.ParaDifferenceCheckPublishRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ligan on 2018/8/27.
 */
@Service
public class DifferenceInfo {
    @Autowired
    private ParaDifferenceCheckPublishRepository paraDifferenceCheckPublishRepository;
    //记录产品流程信息
   public void insertProdDifferenceInfo(MbProdInfo mbProdInfo,String reqNo){
       ParaDifferenceCheckPublish paraDifferenceCheckPublish=new ParaDifferenceCheckPublish();
       paraDifferenceCheckPublish.setTableFullName("MB_PROD_TYPE");

   }
    //修改操作流程
    public void updateProdDifferenceInfo(MbProdInfo mbProdInfo,String reqNo){

    }
}
