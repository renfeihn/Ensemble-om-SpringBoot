package com.dcits.ensembleom.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_management")
@Getter
@Setter
public class OmProcessManagement {
    public OmProcessManagement(){

    }
    public OmProcessManagement(String reqNo, String transactionId, String transactionDesc, String currentStatus, String isTranGroup) {
        this.reqNo = reqNo;
        this.transactionId = transactionId;
        this.transactionDesc = transactionDesc;
        this.currentStatus = currentStatus;
        this.isTranGroup = isTranGroup;
    }
    @Id
    @Column(name="req_no")
    private String reqNo;
    @Column(name="transaction_id")
    private String transactionId;
    @Column(name="transaction_desc")
    private String transactionDesc;
    @Column(name="current_status")
    private String currentStatus;
    @Column(name="is_tran_group")
    private String isTranGroup;

    @Override
    public String toString() {
        return "OmProcessManagement{" +
                "reqNo='" + reqNo + '\'' +
                ", transactionId='" + transactionId + '\'' +
                ", transactionDesc='" + transactionDesc + '\'' +
                ", currentStatus='" + currentStatus + '\'' +
                ", isTranGroup='" + isTranGroup + '\'' +
                '}';
    }
}
