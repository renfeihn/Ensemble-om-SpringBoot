package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;
import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "irl_basis_rate")
@IdClass(IrlBasisRateKeysClass.class)
@Getter
@Setter
public class IrlBasisRate implements Serializable {

    public IrlBasisRate() {
    }

    public IrlBasisRate(String intBasis, String ccy, String effectDate, String intBasisRate, String company, String tranTimestamp, String tranTime) {
        this.intBasis = intBasis;
        this.ccy = ccy;
        this.effectDate = effectDate;
        this.intBasisRate = intBasisRate;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name = "int_basis")
    private String intBasis;
    @Column(name = "ccy")
    private String ccy;
    @Column(name = "effect_date")
    private String effectDate;
    @Column(name = "int_basis_rate")
    private String intBasisRate;
    @Column(name = "company")
    private String company;
    @Column(name = "tran_timestamp")
    private String tranTimestamp;
    @Column(name = "tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "IrlBasisRate{" +
                "intBasis='" + intBasis + '\'' +
                ", ccy='" + ccy + '\'' +
                ", effectDate='" + effectDate + '\'' +
                ", intBasisRate='" + intBasisRate + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}