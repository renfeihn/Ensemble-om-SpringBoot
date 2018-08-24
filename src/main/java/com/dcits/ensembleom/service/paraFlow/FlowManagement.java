package com.dcits.ensembleom.service.paraFlow;

import org.springframework.stereotype.Service;

/**
 * Created by ligan on 2018/8/24.
 */
@Service
public class FlowManagement {
    /**
     * 服务在用户暂存or用户提交时调用
     * @param userName
     * @return
     */
    public String applicationSeqNo(String userName){
        String seqNo="";
        /*
        * 通过用户名获取用户流程信息
        * 若用户对应的流程状态为：待复核、待发布状态则给予提示并返回服务
        * 若用户对应的流程信息为已申请则返回该单号，并将对应单号的操作记录与库中查询的数据进行合并
        * 若用户对应没有流程信息，或者流程信息为已经走完的信息。则为用户申请新的单号
        * */
        return seqNo;
    }
}
