package com.dcits.ensembleom.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.UnsupportedEncodingException;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "para_difference_check_publish")
@IdClass(ParaDifferenceCheckPublishKeysClass.class)
@Getter
@Setter
public class ParaDifferenceCheckPublish {
    public ParaDifferenceCheckPublish(){

    }
    public ParaDifferenceCheckPublish(String reqNo, int seriesNum, String tableFullName, String primaryKeyvalue, byte[] keyValue, String operateType, byte[] dataDui, byte[] olddataUpd) {
        this.reqNo = reqNo;
        this.seriesNum = seriesNum;
        this.tableFullName = tableFullName;
        this.primaryKeyvalue = primaryKeyvalue;
        this.keyValue = keyValue;
        this.operateType = operateType;
        this.dataDui = dataDui;
        this.olddataUpd = olddataUpd;
    }

    @Id
    @Column(name="req_no")
    private String reqNo;
    @Id
    @Column(name="seriesNum")
    private int seriesNum;
    @Column(name="table_full_name")
    private String tableFullName;
    @Column(name="primary_keyvalue")
    private String primaryKeyvalue;
    @Column(name="key_value")
    private byte[] keyValue;
    @Column(name="operate_type")
    private String operateType;
    @Column(name="data_dui")
    private byte[] dataDui;
    @Column(name="olddata_upd")
    private byte[] olddataUpd;

    @Override
    public String toString() {
        String olddataUpd="";
        String dataDui="";
        String keyValue="";
        try {
            dataDui=new String(this.dataDui,"UTF-8");
            olddataUpd=new String(this.olddataUpd,"UTF-8");
            keyValue=new String(this.keyValue,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "ParaDifferenceCheckPublish{" +
                "reqNo='" + reqNo + '\'' +
                ", seriesNum=" + seriesNum +
                ", tableFullName='" + tableFullName + '\'' +
                ", primaryKeyvalue='" + primaryKeyvalue + '\'' +
                ", keyValue='" + keyValue + '\'' +
                ", operateType='" + operateType + '\'' +
                ", dataDui='" + dataDui + '\'' +
                ", olddataUpd='" + olddataUpd + '\'' +
                '}';
    }
}
