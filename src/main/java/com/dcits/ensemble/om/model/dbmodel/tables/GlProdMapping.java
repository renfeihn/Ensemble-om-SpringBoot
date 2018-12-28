package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@Entity
@Table(name = "gl_prod_mapping")
@Getter
@Setter
public class GlProdMapping implements Serializable {
    public GlProdMapping () {}

    public GlProdMapping(String mappingType, String prodType, String mappingDesc, String company, String tranTimestamp, String tranTime) {
        this.mappingType = mappingType;
        this.prodType = prodType;
        this.mappingDesc = mappingDesc;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="mapping_type")
    private String mappingType;
    @Column(name="prod_type")
    private String prodType;
    @Column(name="mapping_desc")
    private String mappingDesc;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;


    @Override
    public String toString() {
        return "GlProdMapping{" +
                "mappingType='" + mappingType + '\'' +
                ", prodType='" + prodType + '\'' +
                ", mappingDesc='" + mappingDesc + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
