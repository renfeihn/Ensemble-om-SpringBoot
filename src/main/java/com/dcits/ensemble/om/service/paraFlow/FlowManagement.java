package com.dcits.ensemble.om.service.paraFlow;

import com.dcits.ensemble.om.model.dbmodel.OmProcessRecordHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessMainFlow;
import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHist;
import com.dcits.ensemble.om.model.dbmodel.OmProcessRelationHist;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessDetailHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessMainFlowRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRecordHistRepository;
import com.dcits.ensemble.om.repository.paraFlow.OmProcessRelationHistRepository;
import com.dcits.ensemble.om.util.ResourcesUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class FlowManagement {
    @Resource
    private OmProcessMainFlowRepository omProcessMainFlowRepository;
    @Resource
    private OmProcessDetailHistRepository omProcessDetailHistRepository;
    @Resource
    private OmProcessRecordHistRepository omProcessRecordHistRepository;
    @Resource
    private OmProcessRelationHistRepository omProcessRelationHistRepository;
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
        paraCircleFlow.setDispose("N");
        paraCircleFlow.setUserId(userName);
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
    //只更改所有流程信息
    public void updateFlowOnly(String mainSeqNo,String userId,String remark,String isApproved,String optType){
        OmProcessMainFlow omProcessMainFlow = omProcessMainFlowRepository.findByMainSeqNo(mainSeqNo);
        if(omProcessMainFlow!=null) {
            String status = "";
            omProcessMainFlow.setMainSeqNo(mainSeqNo);
            if(isApproved.equals("Y")){
                //发布或复核通过
                status = optType;
                if("4".equals(status)){
                    omProcessMainFlow.setDispose("Y");
                }
            }else{
                //发布和复核驳回
                status = "6";
            }
            omProcessMainFlow.setStatus(status);
            //更新主流程表
            omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
            //记录参数操作历史表
            sumProcessInfo(mainSeqNo, userId, status, omProcessMainFlow.getDtlSeqNo(), remark, isApproved);
        }
    }
    @Transactional(rollbackFor = Exception.class)
    public void onlyUpdateDel(OmProcessMainFlow omProcessMainFlow,String userName){
        BigDecimal dtlSeqNo = omProcessMainFlow.getDtlSeqNo();
        omProcessMainFlow.setDtlSeqNo(dtlSeqNo);
        omProcessMainFlow.setStatus("1");
        omProcessMainFlowRepository.saveAndFlush(omProcessMainFlow);
        sumProcessInfo(omProcessMainFlow.getMainSeqNo(), userName, "1", omProcessMainFlow.getDtlSeqNo(),null,null);

    }
    //删除订单信息
    public void deleteTask(String tranId,String seqNo){
        List<OmProcessRelationHist> omProcessRelationHistList = omProcessRelationHistRepository.findByMainSeqNo(seqNo);
        for(OmProcessRelationHist omProcessRelationHist : omProcessRelationHistList){
            if("ALL".equals(tranId)||omProcessRelationHist.getTranId().equals(tranId)){
                omProcessRelationHistRepository.deleteByRecSeqNo(omProcessRelationHist.getRecSeqNo());
                omProcessRecordHistRepository.deleteByRecSeqNo(omProcessRelationHist.getRecSeqNo());
            }
        }
    }
}
