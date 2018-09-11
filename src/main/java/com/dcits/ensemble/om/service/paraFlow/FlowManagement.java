package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class FlowManagement {
    @Autowired
    private OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Autowired
    private OmProcessDetailHistRepository omProcessDetailHistRepository;
    /**
     * 服务在用户暂存时调用
     * 对应交易如果有单号
     * @param userName
     * @return
     */
    public String applicationSeqNo(String userName,String tranName,String tranFlow){
        String seqNo="";
        /*
        * 通过用户和交易名称获取流程信息
        * 若用户对应的流程状态为：待复核、待发布状态则给予提示并返回服务
        * 若用户对应的流程信息为已申请则返回该单号
        * 若用户对应没有流程信息，或者流程信息为已经走完的信息。则为用户申请新的单号
        * */
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByTranId(tranName);
        if(omProcessMainFlow !=null&& omProcessMainFlow.getMainSeqNo()!=null){
            seqNo= appNoByTable(userName,tranName,tranFlow,"1");
        }else{
            //此处判断如果交易状态为待复核、待发布状态则抛出异常
            seqNo= omProcessMainFlow.getMainSeqNo();
        }
         return seqNo;
    }
    //获取操作信息
    public OmProcessRecordHist getParaDifferenceCheckPublish(String reqNo){
        OmProcessRecordHist omProcessRecordHist =new OmProcessRecordHist();

        return omProcessRecordHist;
    }
    //为多表申请单号

    //申请单号
    public String appNoByTable(String userName,String tranName,String tranFlow,String status){
        OmProcessMainFlow paraCircleFlow=new OmProcessMainFlow();
        String  seqNo= ResourcesUtils.getDateTimeUuId();
        paraCircleFlow.setMainSeqNo(seqNo);
        paraCircleFlow.setTranId(tranName);
        paraCircleFlow.setTranDesc("产品定义");
        paraCircleFlow.setStatus(status);
        paraCircleFlow.setIsTranGroup(tranFlow);
        paraCircleFlow.setDtlSeqNo(BigDecimal.ONE);
        //累加序号
        omProcessMainFlowRepository.saveAndFlush(paraCircleFlow);
        sumProcessInfo(seqNo,userName,status,BigDecimal.ONE,null,null);
        return seqNo;
    }
    //操作信息累加processInfo
    public void sumProcessInfo(String seqNo,String userName,String status,BigDecimal dtlSeqNo,String remark,String isApproved){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String date = sdf.format(new Date());
        OmProcessDetailHist omProcessDetailHist =new OmProcessDetailHist();
        omProcessDetailHist.setMainSeqNo(seqNo);
        omProcessDetailHist.setStatus(status);
        omProcessDetailHist.setUserId(userName);
        omProcessDetailHist.setDtlSeqNo(dtlSeqNo);
        omProcessDetailHist.setTranTime(date);
        omProcessDetailHist.setRemark(remark);
        omProcessDetailHist.setIsApproved(isApproved);
        omProcessDetailHistRepository.saveAndFlush(omProcessDetailHist);
    }
    //更新操作流程
    public void updateFlow(String reqNo,String status,String userName,String ipLoc) {
        omProcessMainFlowRepository.updateParaStatus(reqNo, status);
        //更新circle_info表信息
    }
}
