package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "mb_prod_group")
@IdClass(MbProdGroupKeysClass.class)
@Getter
@Setter
public class MbProdGroup implements Serializable {
    public MbProdGroup(String prodType, String prodSubType, String seqNo, String defaultProd, String company, String ratio) {
        this.prodType = prodType;
        this.prodSubType = prodSubType;
        this.seqNo = seqNo;
        this.defaultProd = defaultProd;
        this.company = company;
        this.ratio = ratio;
    }
    public MbProdGroup() {

    }
    @Id
    @Column(name="prod_type")
    private String prodType;
    @Id
    @Column(name="prod_sub_type")
    private String prodSubType;
    @Column(name="seq_no")
    private String seqNo;
    @Column(name="default_prod")
    private String defaultProd;
    @Column(name="company")
    private String company;
    @Column(name="ratio")
    private String ratio;

    @Override
    public String toString() {
        return "MbProdGroup{" +
                "prodType='" + prodType + '\'' +
                ", prodSubType='" + prodSubType + '\'' +
                ", seqNo='" + seqNo + '\'' +
                ", defaultProd='" + defaultProd + '\'' +
                ", company='" + company + '\'' +
                ", ratio='" + ratio + '\'' +
                '}';
    }
}
