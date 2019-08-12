package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "irl_int_matrix")
@Getter
@Setter
public class IrlIntMatrix implements Serializable {

    public IrlIntMatrix () {}

    public IrlIntMatrix(String matrixNo, String irlSeqNo, String matrixAmt, String periodFreq, String dayNum, String intBasis, String spreadRate, String spreadPercent, String actualRate, String minRate, String maxRate, String subIntType, String isOver, String company, String tranTimestamp, String tranTime) {
        this.matrixNo = matrixNo;
        this.irlSeqNo = irlSeqNo;
        this.matrixAmt = matrixAmt;
        this.periodFreq = periodFreq;
        this.dayNum = dayNum;
        this.intBasis = intBasis;
        this.spreadRate = spreadRate;
        this.spreadPercent = spreadPercent;
        this.actualRate = actualRate;
        this.minRate = minRate;
        this.maxRate = maxRate;
        this.subIntType = subIntType;
        this.isOver = isOver;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="matrix_no")
    private String matrixNo;
    @Column(name="irl_seq_no")
    private String irlSeqNo;
    @Column(name="matrix_amt")
    private String matrixAmt;
    @Column(name="period_freq")
    private String periodFreq;
    @Column(name="day_num")
    private String dayNum;
    @Column(name="int_basis")
    private String intBasis;
    @Column(name="spread_rate")
    private String spreadRate;
    @Column(name="spread_percent")
    private String spreadPercent;
    @Column(name="actual_rate")
    private String actualRate;
    @Column(name="min_rate")
    private String minRate;
    @Column(name="max_rate")
    private String maxRate;
    @Column(name="sub_int_type")
    private String subIntType;
    @Column(name="is_over")
    private String isOver;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "IrlIntMatrix{" +
                "matrixNo='" + matrixNo + '\'' +
                ", irlSeqNo='" + irlSeqNo + '\'' +
                ", matrixAmt='" + matrixAmt + '\'' +
                ", periodFreq='" + periodFreq + '\'' +
                ", dayNum='" + dayNum + '\'' +
                ", intBasis='" + intBasis + '\'' +
                ", spreadRate='" + spreadRate + '\'' +
                ", spreadPercent='" + spreadPercent + '\'' +
                ", actualRate='" + actualRate + '\'' +
                ", minRate='" + minRate + '\'' +
                ", maxRate='" + maxRate + '\'' +
                ", subIntType='" + subIntType + '\'' +
                ", isOver='" + isOver + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
