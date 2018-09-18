package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

/**
 * Created by jiajt on 2018/9/17.
 */
@Entity
@Table(name = "mb_prod_class")
@Getter
@Setter
public class MbProdClass {
    public MbProdClass(String prodClass, String prodClassDesc, String prodClassLevel, String parentProdClass) {
        this.prodClass = prodClass;
        this.prodClassDesc = prodClassDesc;
        this.prodClassLevel = prodClassLevel;
        this.parentProdClass = parentProdClass;
    }
    public MbProdClass() {
    }
    @Id
    @Column(name="prod_class")
    private String prodClass;
    @Column(name="prod_class_desc")
    private String prodClassDesc;
    @Column(name="prod_class_level")
    private String prodClassLevel;
    @Column(name="parent_prod_class")
    private String parentProdClass;

    @Override
    public String toString() {
        return "MbProdClass{" +
                "prodClass='" + prodClass + '\'' +
                ", prodClassDesc='" + prodClassDesc + '\'' +
                ", prodClassLevel='" + prodClassLevel + '\'' +
                ", parentProdClass='" + parentProdClass + '\'' +
                '}';
    }
}
