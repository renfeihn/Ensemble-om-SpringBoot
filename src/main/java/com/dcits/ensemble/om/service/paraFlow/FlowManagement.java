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
            seqNo= appNoByTable(userName,tranName,tranFlow);
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
    public String appNoByTable(String userName,String tranName,String tranFlow){
        OmProcessMainFlow paraCircleFlow=new OmProcessMainFlow();
        OmProcessDetailHist omProcessDetailHist =new OmProcessDetailHist();
        String  seqNo= ResourcesUtils.getDateTimeUuId();
        paraCircleFlow.setMainSeqNo(seqNo);
        paraCircleFlow.setTranId(tranName);
        paraCircleFlow.setStatus("1");
        paraCircleFlow.setIsTranGroup(tranFlow);
        omProcessMainFlowRepository.saveAndFlush(paraCircleFlow);
        sumProcessInfo(seqNo,userName,"1");
        return seqNo;
    }
    //操作信息累加processInfo
    public void sumProcessInfo(String seqNo,String userName,String operatorType){
        OmProcessDetailHist omProcessDetailHist =new OmProcessDetailHist();
        String operator= omProcessDetailHistRepository.findBySeqNoMax(seqNo);
        omProcessDetailHist.setMainSeqNo(seqNo);
        omProcessDetailHist.setStatus(operatorType);
        omProcessDetailHist.setUserId(userName);
        //累加序号
        BigDecimal operatorNo= new BigDecimal(operator==null?"0":operator).add(BigDecimal.ONE);
        omProcessDetailHist.setDtlSeqNo(operatorNo);
        omProcessDetailHistRepository.saveAndFlush(omProcessDetailHist);
    }
    //更新操作流程
    public void updateFlow(String reqNo,String status,String userName,String ipLoc) {
        omProcessMainFlowRepository.updateParaStatus(reqNo, status);
        //更新circle_info表信息
    }
}
