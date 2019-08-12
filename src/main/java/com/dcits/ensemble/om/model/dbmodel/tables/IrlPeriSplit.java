package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "irl_peri_split")
@IdClass(IrlPeriSplitKeysClass.class)
@Getter
@Setter
public class IrlPeriSplit implements Serializable {

    public IrlPeriSplit() {}


    public IrlPeriSplit(String periSplitId, String periSeqNo, String period, String periodType, String recalDays, String recalMethod, String intType, String amtSplitId, String ruleId, String tranTimestamp, String tranTime) {
        this.periSplitId = periSplitId;
        this.periSeqNo = periSeqNo;
        this.period = period;
        this.periodType = periodType;
        this.recalDays = recalDays;
        this.recalMethod = recalMethod;
        this.intType = intType;
        this.amtSplitId = amtSplitId;
        this.ruleId = ruleId;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }
    @Id
    @Column(name="peri_split_id")
    private String periSplitId;
    @Column(name="peri_seq_no")
    private String periSeqNo;
    @Column(name="period")
    private String period;
    @Column(name="period_type")
    private String periodType;
    @Column(name="recal_days")
    private String recalDays;
    @Column(name="recal_method")
    private String recalMethod;
    @Column(name="int_type")
    private String intType;
    @Column(name="amt_split_id")
    private String amtSplitId;
    @Column(name="rule_id")
    private String ruleId;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "IrlPeriSplit{" +
                "periSplitId='" + periSplitId + '\'' +
                ", periSeqNo='" + periSeqNo + '\'' +
                ", period='" + period + '\'' +
                ", periodType='" + periodType + '\'' +
                ", recalDays='" + recalDays + '\'' +
                ", recalMethod='" + recalMethod + '\'' +
                ", intType='" + intType + '\'' +
                ", amtSplitId='" + amtSplitId + '\'' +
                ", ruleId='" + ruleId + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
