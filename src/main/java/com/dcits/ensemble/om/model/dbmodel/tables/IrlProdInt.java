package com.dcits.ensemble.om.model.dbmodel.tables;

/**
 * Created by jiajt on 2018/9/18.
 */

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "irl_prod_int")
@Getter
@Setter
public class IrlProdInt {
    public IrlProdInt(String prodType, String eventType, String intType, String intTypeDesc,String intClass,
                            String taxType, String rateAmtId, String intAmtId, String recalMethod,String company, String intStart, String intDaysType,
                            String intCalcBal, String intApplType, String rollFreq, String rollDay, String minRate, String maxRate,
                            String intRateInd, String monthBasis, String groupRuleType, String splitId,
                            String splitType, String ruleid, String tranTimestamp, String tranTime,String acctRateEffect) {
        this.prodType = prodType;
        this.eventType = eventType;
        this.intType = intType;
        this.intTypeDesc = intTypeDesc;
        this.intClass = intClass;
        this.taxType = taxType;
        this.rateAmtId = rateAmtId;
        this.intAmtId = intAmtId;
        this.recalMethod = recalMethod;
        this.company = company;
        this.intStart = intStart;
        this.intDaysType = intDaysType;
        this.intCalcBal = intCalcBal;
        this.intApplType = intApplType;
        this.rollFreq = rollFreq;
        this.rollDay = rollDay;
        this.minRate = minRate;
        this.maxRate = maxRate;
        this.intRateInd = intRateInd;
        this.monthBasis = monthBasis;
        this.groupRuleType = groupRuleType;
        this.splitId = splitId;

        this.splitType = splitType;
        this.ruleid = ruleid;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
        this.acctRateEffect = acctRateEffect;
    }
    public IrlProdInt() {
    }
    @Id
    @Column(name="prod_type")
    private String prodType;
    @Column(name="event_type")
    private String eventType;
    @Column(name="int_type")
    private String intType;
    @Column(name="int_type_desc")
    private String intTypeDesc;
    @Column(name="int_class")
    private String intClass;
    @Column(name="tax_type")
    private String taxType;
    @Column(name="rate_amt_id")
    private String rateAmtId;
    @Column(name="int_amt_id")
    private String intAmtId;
    @Column(name="recal_method")
    private String recalMethod;
    @Column(name="company")
    private String company;
    @Column(name="int_start")
    private String intStart;
    @Column(name="int_days_type")
    private String intDaysType;
    @Column(name="int_calc_bal")
    private String intCalcBal;
    @Column(name="int_appl_type")
    private String intApplType;
    @Column(name="roll_freq")
    private String rollFreq;
    @Column(name="roll_day")
    private String rollDay;
    @Column(name="min_rate")
    private String minRate;

    @Column(name="max_rate")
    private String maxRate;
    @Column(name="int_rate_ind")
    private String intRateInd;
    @Column(name="month_basis")
    private String monthBasis;
    @Column(name="group_rule_type")
    private String groupRuleType;
    @Column(name="split_id")
    private String splitId;

    @Column(name="split_type")
    private String splitType;
    @Column(name="ruleid")
    private String ruleid;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;
    @Column(name="acct_rate_effect")
    private String acctRateEffect;

    @Override
    public String toString() {
        return "IrlProdInt{" +
                "prodType='" + prodType + '\'' +
                ", eventType='" + eventType + '\'' +
                ", intType='" + intType + '\'' +
                ", intTypeDesc='" + intTypeDesc + '\'' +
                ", intClass='" + intClass + '\'' +
                ", taxType='" + taxType + '\'' +
                ", rateAmtId='" + rateAmtId + '\'' +
                ", intAmtId='" + intAmtId + '\'' +
                ", recalMethod='" + recalMethod + '\'' +
                ", company='" + company + '\'' +
                ", intStart='" + intStart + '\'' +
                ", intDaysType='" + intDaysType + '\'' +
                ", intCalcBal='" + intCalcBal + '\'' +
                ", intApplType='" + intApplType + '\'' +
                ", rollFreq='" + rollFreq + '\'' +
                ", rollDay='" + rollDay + '\'' +
                ", minRate='" + minRate + '\'' +
                ", maxRate='" + maxRate + '\'' +
                ", intRateInd='" + intRateInd + '\'' +
                ", monthBasis='" + monthBasis + '\'' +
                ", groupRuleType='" + groupRuleType + '\'' +
                ", splitId='" + splitId + '\'' +
                ", splitType='" + splitType + '\'' +
                ", ruleid='" + ruleid + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                ", acctRateEffect='" + acctRateEffect + '\'' +
                '}';
    }
}
