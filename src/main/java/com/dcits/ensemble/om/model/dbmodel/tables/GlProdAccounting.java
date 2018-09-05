package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/9/18.
 */
@Entity
@Table(name = "gl_prod_accounting")
@IdClass(GlProdAccountingKeysClass.class)
@Getter
@Setter
public class GlProdAccounting implements Serializable {
    public GlProdAccounting(String prodType, String accountingStatus, String profitCentre, String businessUnit,
                       String glCodeA, String glCodeL, String glCodeIntE, String glCodeIntPay,String glCodeIntI, String glCodeIntRec, String glCodeIntAcr,
                            String glCodeOdpI, String glCodeOdpRec, String glCodeOdpAcr, String glCodeOdiI, String glCodeOdiRec, String glCodeOdiAcr,
            String glCodeALoss, String glCodeAdjust, String tranTimestamp, String tranTime) {
        this.prodType = prodType;
        this.accountingStatus = accountingStatus;
        this.profitCentre = profitCentre;
        this.businessUnit = businessUnit;
        this.glCodeA = glCodeA;
        this.glCodeL = glCodeL;
        this.glCodeIntE = glCodeIntE;
        this.glCodeIntPay = glCodeIntPay;
        this.glCodeIntI = glCodeIntI;
        this.glCodeIntRec = glCodeIntRec;
        this.glCodeIntAcr = glCodeIntAcr;
        this.glCodeOdpI = glCodeOdpI;
        this.glCodeOdpRec = glCodeOdpRec;
        this.glCodeOdpAcr = glCodeOdpAcr;
        this.glCodeOdiI = glCodeOdiI;
        this.glCodeOdiRec = glCodeOdiRec;
        this.glCodeOdiAcr = glCodeOdiAcr;
        this.glCodeALoss = glCodeALoss;
        this.glCodeAdjust = glCodeAdjust;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }
    public GlProdAccounting() {
    }
    @Id
    @Column(name="prod_type")
    private String prodType;
    @Column(name="accounting_status")
    private String accountingStatus;
    @Column(name="profit_centre")
    private String profitCentre;
    @Column(name="business_unit")
    private String businessUnit;
    @Column(name="gl_code_a")
    private String glCodeA;
    @Column(name="gl_code_l")
    private String glCodeL;
    @Column(name="gl_code_int_e")
    private String glCodeIntE;
    @Column(name="gl_code_int_pay")
    private String glCodeIntPay;
    @Column(name="gl_code_int_i")
    private String glCodeIntI;
    @Column(name="gl_code_int_rec")
    private String glCodeIntRec;
    @Column(name="gl_code_int_acr")
    private String glCodeIntAcr;
    @Column(name="gl_code_odp_i")
    private String glCodeOdpI;
    @Column(name="gl_code_odp_rec")
    private String glCodeOdpRec;
    @Column(name="gl_code_odp_acr")
    private String glCodeOdpAcr;
    @Column(name="gl_code_odi_i")
    private String glCodeOdiI;
    @Column(name="gl_code_odi_rec")
    private String glCodeOdiRec;

    @Column(name="gl_code_odi_acr")
    private String glCodeOdiAcr;
    @Column(name="gl_code_a_loss")
    private String glCodeALoss;
    @Column(name="gl_code_adjust")
    private String glCodeAdjust;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "GlProdAccounting{" +
                "prodType='" + prodType + '\'' +
                ", accountingStatus='" + accountingStatus + '\'' +
                ", profitCentre='" + profitCentre + '\'' +
                ", businessUnit='" + businessUnit + '\'' +
                "glCodeA='" + glCodeA + '\'' +
                ", glCodeL='" + glCodeL + '\'' +
                ", glCodeIntE='" + glCodeIntE + '\'' +
                ", glCodeIntPay='" + glCodeIntPay + '\'' +
                "glCodeIntI='" + glCodeIntI + '\'' +
                ", glCodeIntRec='" + glCodeIntRec + '\'' +
                ", glCodeIntAcr='" + glCodeIntAcr + '\'' +
                ", glCodeOdpI='" + glCodeOdpI + '\'' +
                "glCodeOdpRec='" + glCodeOdpRec + '\'' +
                ", glCodeOdpAcr='" + glCodeOdpAcr + '\'' +
                ", glCodeOdiI='" + glCodeOdiI + '\'' +
                ", glCodeOdiRec='" + glCodeOdiRec + '\'' +
                "glCodeOdiAcr='" + glCodeOdiAcr + '\'' +
                ", glCodeALoss='" + glCodeALoss + '\'' +
                ", glCodeAdjust='" + glCodeAdjust + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                "tranTime='" + tranTime + '\'' +
                '}';
    }
}
