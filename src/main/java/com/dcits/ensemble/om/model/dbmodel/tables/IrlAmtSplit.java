package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "irl_amt_split")
@IdClass(IrlAmtSplitKeysClass.class)
@Getter
@Setter
public class IrlAmtSplit implements Serializable {

    public IrlAmtSplit () {}

    public IrlAmtSplit(String amtSplitId, String amtSeqNo, String splitAmt, String amtSplitMode, String intType, String periSplitId, String ruleId, String tranTimestamp, String tranTime) {
        this.amtSplitId = amtSplitId;
        this.amtSeqNo = amtSeqNo;
        this.splitAmt = splitAmt;
        this.amtSplitMode = amtSplitMode;
        this.intType = intType;
        this.periSplitId = periSplitId;
        this.ruleId = ruleId;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="amt_split_id")
    private String amtSplitId;
    @Column(name="amt_seq_no")
    private String amtSeqNo;
    @Column(name="split_amt")
    private String splitAmt;
    @Column(name="amt_split_mode")
    private String amtSplitMode;
    @Column(name="int_type")
    private String intType;
    @Column(name="peri_split_id")
    private String periSplitId;
    @Column(name="rule_id")
    private String ruleId;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "IrlAmtSplit{" +
                "amtSplitId='" + amtSplitId + '\'' +
                ", amtSeqNo='" + amtSeqNo + '\'' +
                ", splitAmt='" + splitAmt + '\'' +
                ", amtSplitMode='" + amtSplitMode + '\'' +
                ", intType='" + intType + '\'' +
                ", periSplitId='" + periSplitId + '\'' +
                ", ruleId='" + ruleId + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
