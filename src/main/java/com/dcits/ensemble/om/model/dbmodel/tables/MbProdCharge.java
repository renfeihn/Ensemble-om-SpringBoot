package com.dcits.ensemble.om.model.dbmodel.tables;

/**
 * Created by jiajt on 2018/9/18.
 */
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "mb_prod_charge")
@Getter
@Setter
public class MbProdCharge {
    public MbProdCharge(String prodType, String feeType, String chargePeriodFreq, String chargeDay, String nextChargeDate, String tranTimestamp, String tranTime) {
        this.prodType = prodType;
        this.feeType = feeType;
        this.chargePeriodFreq = chargePeriodFreq;
        this.chargeDay = chargeDay;
        this.nextChargeDate = nextChargeDate;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    public MbProdCharge() {
    }
    @Id
    @Column(name="prod_type")
    private String prodType;
    @Column(name="fee_type")
    private String feeType;
    @Column(name="charge_period_freq")
    private String chargePeriodFreq;
    @Column(name="charge_day")
    private String chargeDay;
    @Column(name="next_charge_date")
    private String nextChargeDate;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "MbProdCharge{" +
                "prodType='" + prodType + '\'' +
                ", feeType='" + feeType + '\'' +
                ", chargePeriodFreq='" + chargePeriodFreq + '\'' +
                ", chargeDay='" + chargeDay + '\'' +
                ", nextChargeDate='" + nextChargeDate + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
