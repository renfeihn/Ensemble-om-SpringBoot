package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.UnsupportedEncodingException;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_operation_records")
@IdClass(OmOperationRecordsKeysClass.class)
@Getter
@Setter
public class OmOperationRecords {
    public OmOperationRecords(){

    }
    public OmOperationRecords(String reqNo, int seriesNum, String tableFullName, String primaryKeyvalue, byte[] keyValue, String operateType, byte[] dataDui, byte[] olddataUpd) {
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
            if(this.dataDui!=null)
            dataDui=new String(this.dataDui,"UTF-8");
            if(this.olddataUpd!=null)
            olddataUpd=new String(this.olddataUpd,"UTF-8");
            if(this.keyValue!=null)
            keyValue=new String(this.keyValue,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "OmOperationRecords{" +
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
