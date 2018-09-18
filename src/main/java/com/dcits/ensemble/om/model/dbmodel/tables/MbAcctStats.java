package com.dcits.ensemble.om.model.dbmodel.tables;

/**
 * Created by jiajt on 2018/9/18.
 */
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "mb_acct_stats")
@Getter
@Setter
public class MbAcctStats {
    public MbAcctStats(String internalKey, String ctrlDate, String actualBal, String aggBalCtd, String aggBalMtd, String aggBalQtd, String aggBalStd, String aggBalYtd, String ctdDays, String mtdDays, String qtdDays, String stdDays, String ytdDays, String actMtdDays, String actQtdDays, String actStdDays, String actYtdDays, String company, String tranTimestamp, String tranTime, String routerKey) {
        this.internalKey = internalKey;
        this.ctrlDate = ctrlDate;
        this.actualBal = actualBal;
        this.aggBalCtd = aggBalCtd;
        this.aggBalMtd = aggBalMtd;
        this.aggBalQtd = aggBalQtd;
        this.aggBalStd = aggBalStd;
        this.aggBalYtd = aggBalYtd;
        this.ctdDays = ctdDays;
        this.mtdDays = mtdDays;
        this.qtdDays = qtdDays;
        this.stdDays = stdDays;
        this.ytdDays = ytdDays;
        this.actMtdDays = actMtdDays;
        this.actQtdDays = actQtdDays;
        this.actStdDays = actStdDays;
        this.actYtdDays = actYtdDays;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
        this.routerKey = routerKey;
    }

    public MbAcctStats() {
    }
    @Id
    @Column(name="internal_key")
    private String internalKey;
    @Column(name="ctrl_date")
    private String ctrlDate;
    @Column(name="actual_bal")
    private String actualBal;
    @Column(name="agg_bal_ctd")
    private String aggBalCtd;
    @Column(name="agg_bal_mtd")
    private String aggBalMtd;
    @Column(name="agg_bal_qtd")
    private String aggBalQtd;
    @Column(name="agg_bal_std")
    private String aggBalStd;
    @Column(name="agg_bal_ytd")
    private String aggBalYtd;
    @Column(name="ctd_days")
    private String ctdDays;
    @Column(name="mtd_days")
    private String mtdDays;
    @Column(name="qtd_days")
    private String qtdDays;
    @Column(name="std_days")
    private String stdDays;
    @Column(name="ytd_days")
    private String ytdDays;
    @Column(name="act_mtd_days")
    private String actMtdDays;
    @Column(name="act_qtd_days")
    private String actQtdDays;
    @Column(name="act_std_days")
    private String actStdDays;
    @Column(name="act_ytd_days")
    private String actYtdDays;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;
    @Column(name="router_key")
    private String routerKey;

    @Override
    public String toString() {
        return "MbAcctStats{" +
                "internalKey='" + internalKey + '\'' +
                ", ctrlDate='" + ctrlDate + '\'' +
                ", actualBal='" + actualBal + '\'' +
                ", aggBalCtd='" + aggBalCtd + '\'' +
                ", aggBalMtd='" + aggBalMtd + '\'' +
                ", aggBalQtd='" + aggBalQtd + '\'' +
                ", aggBalStd='" + aggBalStd + '\'' +
                ", aggBalYtd='" + aggBalYtd + '\'' +
                ", ctdDays='" + ctdDays + '\'' +
                ", mtdDays='" + mtdDays + '\'' +
                ", qtdDays='" + qtdDays + '\'' +
                ", stdDays='" + stdDays + '\'' +
                ", ytdDays='" + ytdDays + '\'' +
                ", actMtdDays='" + actMtdDays + '\'' +
                ", actQtdDays='" + actQtdDays + '\'' +
                ", actStdDays='" + actStdDays + '\'' +
                ", actYtdDays='" + actYtdDays + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                ", routerKey='" + routerKey + '\'' +
                '}';
    }
}
