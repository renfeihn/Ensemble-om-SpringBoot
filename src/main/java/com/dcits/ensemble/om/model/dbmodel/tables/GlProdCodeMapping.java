package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "gl_prod_code_mapping")
@IdClass(GlProdCodeMappingKeysClass.class)
@Getter
@Setter
public class GlProdCodeMapping implements Serializable {
    public GlProdCodeMapping () {}

    public GlProdCodeMapping(String prodType, String status, String amtType, String glCodeCol, String glCode, String company, String tranTimestamp, String tranTime) {
        this.prodType = prodType;
        this.status = status;
        this.amtType = amtType;
        this.glCodeCol = glCodeCol;
        this.glCode = glCode;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="prod_type")
    private String prodType;
    @Column(name="status")
    private String status;
    @Column(name="amt_type")
    private String amtType;
    @Column(name="gl_code_col")
    private String glCodeCol;
    @Column(name="gl_code")
    private String glCode;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "GlProdCodeMapping{" +
                "prodType='" + prodType + '\'' +
                ", status='" + status + '\'' +
                ", amtType='" + amtType + '\'' +
                ", glCodeCol='" + glCodeCol + '\'' +
                ", glCode='" + glCode + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}

