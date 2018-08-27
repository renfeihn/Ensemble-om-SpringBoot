package com.dcits.ensembleom.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "para_circle_info")
@IdClass(ParaCircleInfoKeysClass.class)
@Getter
@Setter
public class ParaCircleInfo implements Serializable {
    public ParaCircleInfo(){
        }
    public ParaCircleInfo(String reqNo, String operatorType, String checkText, String approve, String operatorId, String currentsystemTime, String clientIp) {
        this.reqNo = reqNo;
        this.operatorType = operatorType;
        this.checkText = checkText;
        this.approve = approve;
        this.operatorId = operatorId;
        this.currentsystemTime = currentsystemTime;
        this.clientIp = clientIp;
    }
    @Id
    @Column(name="req_no")
    private String reqNo;
    @Id
    @Column(name="operator_type")
    private String operatorType;
    @Column(name="check_text")
    private String checkText;
    @Column(name="approve")
    private String approve;
    @Column(name="operator_id")
    private String operatorId;
    @Column(name="currentsystem_time")
    private String currentsystemTime;
    @Column(name="client_ip")
    private String clientIp;

    @Override
    public String toString() {
        return "ParaCircleInfo{" +
                "reqNo='" + reqNo + '\'' +
                ", operatorType='" + operatorType + '\'' +
                ", checkText='" + checkText + '\'' +
                ", approve='" + approve + '\'' +
                ", operatorId='" + operatorId + '\'' +
                ", currentsystemTime='" + currentsystemTime + '\'' +
                ", clientIp='" + clientIp + '\'' +
                '}';
    }
}
