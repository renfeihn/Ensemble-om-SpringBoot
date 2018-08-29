package com.dcits.ensembleom.service.paraFlow;

import com.dcits.ensembleom.model.dbmodel.ParaCircleFlow;
import com.dcits.ensembleom.model.dbmodel.ParaCircleInfo;
import com.dcits.ensembleom.model.dbmodel.ParaDifferenceCheckPublish;
import com.dcits.ensembleom.repository.paraFlow.ParaCircleFlowRepository;
import com.dcits.ensembleom.repository.paraFlow.ParaCircleInfoRepository;
import com.dcits.ensembleom.util.ResourcesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class FlowManagement {
    @Autowired
    private ParaCircleFlowRepository paraCircleFlowRepository;
    @Autowired
    private ParaCircleInfoRepository paraCircleInfoRepository;
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
        ParaCircleFlow paraCircleFlow= paraCircleFlowRepository.findByTransactionId(tranName);
        if(paraCircleFlow!=null&&paraCircleFlow.getReqNo()!=null){
            seqNo= appNoByTable(userName,tranName,tranFlow);
        }else{
            //此处判断如果交易状态为待复核、待发布状态则抛出异常
            seqNo=paraCircleFlow.getReqNo();
        }
         return seqNo;
    }
    //获取操作信息
    public ParaDifferenceCheckPublish  getParaDifferenceCheckPublish(String reqNo){
        ParaDifferenceCheckPublish paraDifferenceCheckPublish=new ParaDifferenceCheckPublish();

        return paraDifferenceCheckPublish;
    }
    //为多表申请单号

    //申请单号
    public String appNoByTable(String userName,String tranName,String tranFlow){
        ParaCircleFlow paraCircleFlow=new ParaCircleFlow();
        ParaCircleInfo paraCircleInfo=new ParaCircleInfo();
        String  seqNo= ResourcesUtils.getDateTimeUuId();
        paraCircleFlow.setReqNo(seqNo);
        paraCircleFlow.setTransactionId(tranName);
        paraCircleFlow.setCurrentStatus("1");
        paraCircleFlow.setIsTranGroup(tranFlow);
        paraCircleFlowRepository.saveAndFlush(paraCircleFlow);
        paraCircleInfo.setReqNo(seqNo);
        paraCircleInfo.setOperatorType("1");
        paraCircleInfo.setApprove(userName);
        paraCircleInfoRepository.saveAndFlush(paraCircleInfo);
        return seqNo;
    }
    //更新操作流程
    public void updateFlow(String reqNo,String status,String userName,String ipLoc) {
        paraCircleFlowRepository.updateParaStatus(reqNo, status);
        //更新circle_info表信息
    }
}
