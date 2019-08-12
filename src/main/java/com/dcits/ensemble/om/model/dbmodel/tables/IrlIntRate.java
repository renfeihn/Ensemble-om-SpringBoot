package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "irl_int_rate")
@Getter
@Setter
public class IrlIntRate implements Serializable {

    public IrlIntRate () {}

    public IrlIntRate(String irlSeqNo, String intType, String ccy, String effectDate, String endDate, String yearBasis, String branch, String lastChgRunDate, String company, String tranTimestamp, String tranTime) {
        this.irlSeqNo = irlSeqNo;
        this.intType = intType;
        this.ccy = ccy;
        this.effectDate = effectDate;
        this.endDate = endDate;
        this.yearBasis = yearBasis;
        this.branch = branch;
        this.lastChgRunDate = lastChgRunDate;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="irl_seq_no")
    private String irlSeqNo;
    @Column(name="int_type")
    private String intType;
    @Column(name="ccy")
    private String ccy;
    @Column(name="effect_date")
    private String effectDate;
    @Column(name="end_date")
    private String endDate;
    @Column(name="year_basis")
    private String yearBasis;
    @Column(name="branch")
    private String branch;
    @Column(name="last_chg_run_date")
    private String lastChgRunDate;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "IrlIntRate{" +
                "irlSeqNo='" + irlSeqNo + '\'' +
                ", intType='" + intType + '\'' +
                ", ccy='" + ccy + '\'' +
                ", effectDate='" + effectDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", yearBasis='" + yearBasis + '\'' +
                ", branch='" + branch + '\'' +
                ", lastChgRunDate='" + lastChgRunDate + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
