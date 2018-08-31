package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_combination")
@IdClass(OmProcessCombinationKeysClass.class)
@Getter
@Setter
public class OmProcessCombination implements Serializable {
    public OmProcessCombination(String reqNo, String operatorNo, String subTransactionId, String subReqNo, String publishStatus) {
        this.reqNo = reqNo;
        this.operatorNo = operatorNo;
        this.subTransactionId = subTransactionId;
        this.subReqNo = subReqNo;
        this.publishStatus = publishStatus;
    }

    public OmProcessCombination(){}
    @Id
    @Column(name="req_no")
    private String reqNo;
    @Id
    @Column(name="operator_no")
    private String operatorNo;
    @Id
    @Column(name="sub_transaction_id")
    private String subTransactionId;
    @Column(name="sub_req_no")
    private String subReqNo;
    @Column(name="publish_status")
    private String publishStatus;

    @Override
    public String toString() {
        return "OmProcessCombination{" +
                "reqNo='" + reqNo + '\'' +
                ", operatorNo='" + operatorNo + '\'' +
                ", subTransactionId='" + subTransactionId + '\'' +
                ", subReqNo='" + subReqNo + '\'' +
                ", publishStatus='" + publishStatus + '\'' +
                '}';
    }
}
