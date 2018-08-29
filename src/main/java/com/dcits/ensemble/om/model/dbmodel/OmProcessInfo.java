package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_info")
@IdClass(OmProcessInfoKeysClass.class)
@Getter
@Setter
public class OmProcessInfo implements Serializable {
    public OmProcessInfo(String reqNo, String transactionId, String subReqNo, String publishStatus) {
        this.reqNo = reqNo;
        this.subTransactionId = transactionId;
        this.subReqNo = subReqNo;
        this.publishStatus = publishStatus;
    }
    public OmProcessInfo(){}
    @Id
    @Column(name="req_no")
    private String reqNo;
    @Id
    @Column(name="sub_transaction_id")
    private String subTransactionId;
    @Column(name="sub_req_no")
    private String subReqNo;
    @Column(name="publish_status")
    private String publishStatus;

    @Override
    public String toString() {
        return "OmProcessInfo{" +
                "reqNo='" + reqNo + '\'' +
                ", transactionId='" + subTransactionId + '\'' +
                ", subReqNo='" + subReqNo + '\'' +
                ", publishStatus='" + publishStatus + '\'' +
                '}';
    }
}
