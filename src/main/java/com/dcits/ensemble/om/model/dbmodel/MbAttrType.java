package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/3.
 */
@Entity
@Table(name = "mb_attr_type")
@Getter
@Setter
public class MbAttrType implements Serializable {
    public MbAttrType () {

    }

    public MbAttrType(String attrKey, String attrType, String attrDesc, String attrClass, String useMethod, String valueMethod, String setValueFlag, String busiCatagory, String status, String company, String tranTimestamp, String tranTime) {
        this.attrKey = attrKey;
        this.attrType = attrType;
        this.attrDesc = attrDesc;
        this.attrClass = attrClass;
        this.useMethod = useMethod;
        this.valueMethod = valueMethod;
        this.setValueFlag = setValueFlag;
        this.busiCatagory = busiCatagory;
        this.status = status;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="attr_key")
    private String attrKey;
    @Column(name="attr_type")
    private String attrType;
    @Column(name="attr_desc")
    private String attrDesc;
    @Column(name="attr_class")
    private String attrClass;
    @Column(name="use_method")
    private String useMethod;
    @Column(name="value_method")
    private String valueMethod;
    @Column(name="set_value_flag")
    private String setValueFlag;
    @Column(name="busi_category")
    private String busiCatagory;
    @Column(name="status")
    private String status;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "MbAttrType{" +
                "attrKey='" + attrKey + '\'' +
                ", attrType='" + attrType + '\'' +
                ", attrDesc='" + attrDesc + '\'' +
                ", attrClass='" + attrClass + '\'' +
                ", useMethod='" + useMethod + '\'' +
                ", valueMethod='" + valueMethod + '\'' +
                ", setValueFlag='" + setValueFlag + '\'' +
                ", busiCatagory='" + busiCatagory + '\'' +
                ", status='" + status + '\'' +
                ", compang='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
