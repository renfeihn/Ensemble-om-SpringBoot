package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/3.
 */
@Entity
@Table(name = "mb_attr_class")
@Getter
@Setter
public class MbAttrClass implements Serializable {
    public MbAttrClass () {}

    public MbAttrClass(String attrClass, String attrClassDesc, String attrClassLevel, String parentAttrClass) {
        this.attrClass = attrClass;
        this.attrClassDesc = attrClassDesc;
        this.attrClassLevel = attrClassLevel;
        this.parentAttrClass = parentAttrClass;
    }

    @Id
    @Column(name="attr_class")
    private String attrClass;
    @Column(name="attr_class_desc")
    private String attrClassDesc;
    @Column(name="attr_class_level")
    private String attrClassLevel;
    @Column(name="parent_attr_class")
    private String parentAttrClass;

    @Override
    public String toString() {
        return "MbAttrClass{" +
                "attrClass='" + attrClass + '\'' +
                ", attrClassDesc='" + attrClassDesc + '\'' +
                ", attrClassLevel='" + attrClassLevel + '\'' +
                ", parentAttrClass='" + parentAttrClass + '\'' +
                '}';
    }
}
