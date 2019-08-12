package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "irl_int_type")
@Getter
@Setter
public class IrlIntType implements Serializable {

    public IrlIntType () {}

    public IrlIntType(String intTaxType, String intTaxTypeDesc, String prodGrp, String rateLadder, String company, String intTaxFlag, String taxLadder, String tranTimestamp, String tranTime) {
        this.intTaxType = intTaxType;
        this.intTaxTypeDesc = intTaxTypeDesc;
        this.prodGrp = prodGrp;
        this.rateLadder = rateLadder;
        this.company = company;
        this.intTaxFlag = intTaxFlag;
        this.taxLadder = taxLadder;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="int_tax_type")
    private String intTaxType;
    @Column(name="int_tax_type_desc")
    private String intTaxTypeDesc;
    @Column(name="prod_grp")
    private String prodGrp;
    @Column(name="rate_ladder")
    private String rateLadder;
    @Column(name="company")
    private String company;
    @Column(name="int_tax_flag")
    private String intTaxFlag;
    @Column(name="tax_ladder")
    private String taxLadder;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "IrlIntType{" +
                "intTaxType='" + intTaxType + '\'' +
                ", intTaxTypeDesc='" + intTaxTypeDesc + '\'' +
                ", prodGrp='" + prodGrp + '\'' +
                ", rateLadder='" + rateLadder + '\'' +
                ", company='" + company + '\'' +
                ", intTaxFlag='" + intTaxFlag + '\'' +
                ", taxLadder='" + taxLadder + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
