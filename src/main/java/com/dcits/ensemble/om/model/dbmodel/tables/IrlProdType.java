package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "irl_prod_type")
@Getter
@Setter
public class IrlProdType implements Serializable {
    public IrlProdType () {}

    public IrlProdType(String prodType, String prodTypeDesc, String prodGrp, String intDateType, String glMergeType, String company, String fixedCall, String tranTimestamp, String tranTime, String prevCalcType) {
        this.prodType = prodType;
        this.prodTypeDesc = prodTypeDesc;
        this.prodGrp = prodGrp;
        this.intDateType = intDateType;
        this.glMergeType = glMergeType;
        this.company = company;
        this.fixedCall = fixedCall;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
        this.prevCalcType = prevCalcType;
    }

    @Id
    @Column(name="prod_type")
    private String prodType;
    @Column(name="prod_type_desc")
    private String prodTypeDesc;
    @Column(name="prod_grp")
    private String prodGrp;
    @Column(name="int_date_type")
    private String intDateType;
    @Column(name="gl_merge_type")
    private String glMergeType;
    @Column(name="company")
    private String company;
    @Column(name="fixed_call")
    private String fixedCall;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;
    @Column(name="prev_calc_type")
    private String prevCalcType;


    @Override
    public String toString() {
        return "IrlProdType{" +
                "prodType='" + prodType + '\'' +
                ", prodTypeDesc='" + prodTypeDesc + '\'' +
                ", prodGrp='" + prodGrp + '\'' +
                ", intDateType='" + intDateType + '\'' +
                ", glMergeType='" + glMergeType + '\'' +
                ", company='" + company + '\'' +
                ", fixedCall='" + fixedCall + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                ", prevCalcType='" + prevCalcType + '\'' +
                '}';
    }
}
