package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/3.
 */
@Entity
@Table(name = "mb_attr_value")
@IdClass(MbAttrValueKeysClass.class)
@Getter
@Setter
public class MbAttrValue implements Serializable {
    public MbAttrValue() {

    }

    public MbAttrValue(String attrKey, String attrValue, String valueDesc, String refTable, String refCondition, String refColumns, String company, String tranTimestamp, String tranTime) {
        this.attrKey = attrKey;
        this.attrValue = attrValue;
        this.valueDesc = valueDesc;
        this.refTable = refTable;
        this.refCondition = refCondition;
        this.refColumns = refColumns;
        this.company = company;
        this.tranTimestamp = tranTimestamp;
        this.tranTime = tranTime;
    }
    @Id
    @Column(name="attr_key")
    private String attrKey;
    @Id
    @Column(name="attr_value")
    private String attrValue;
    @Column(name="value_desc")
    private String valueDesc;
    @Column(name="ref_table")
    private String refTable;
    @Column(name="ref_condition")
    private String refCondition;
    @Column(name="ref_columns")
    private String refColumns;
    @Column(name="company")
    private String company;
    @Column(name="tran_timestamp")
    private String tranTimestamp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "MbAttrValue{" +
                "attrKey='" + attrKey + '\'' +
                ", attrValue='" + attrValue + '\'' +
                ", valueDesc='" + valueDesc + '\'' +
                ", refTable='" + refTable + '\'' +
                ", refCondition='" + refCondition + '\'' +
                ", refColumn='" + refColumns + '\'' +
                ", company='" + company + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
