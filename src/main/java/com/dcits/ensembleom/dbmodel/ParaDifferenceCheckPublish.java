package com.dcits.ensembleom.dbmodel;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Arrays;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "para_difference_check_publish")
public class ParaDifferenceCheckPublish implements Serializable {
    private String tranTimestamp;
    private long seriesNum;
    private String reqNo;
    private String tableFullName;
    private String primaryKeyvalue;
    private byte[] keyValue;



    private String operateType;
    private byte[] dataDui;
    private byte[] olddataUpd;
    public ParaDifferenceCheckPublish(){


    }
    @Id
    @Column(name="tran_timestamp")
    public String getTranTimestamp() {
        return tranTimestamp;
    }

    public void setTranTimestamp(String tranTimestamp) {
        this.tranTimestamp = tranTimestamp;
    }

    public long getSeriesNum() {
        return seriesNum;
    }

    public void setSeriesNum(long seriesNum) {
        this.seriesNum = seriesNum;
    }
    @Column(name="req_no")
    public String getReqNo() {
        return reqNo;
    }

    public void setReqNo(String reqNo) {
        this.reqNo = reqNo;
    }
    @Column(name="primary_keyvalue")
    public String getPrimaryKeyvalue() {
        return primaryKeyvalue;
    }

    public void setPrimaryKeyvalue(String primaryKeyvalue) {
        this.primaryKeyvalue = primaryKeyvalue;
    }
    @Column(name="table_full_name")
    public String getTableFullName() {
        return tableFullName;
    }

    public void setTableFullName(String tableFullName) {
        this.tableFullName = tableFullName;
    }
    @Column(name="key_value")
    public byte[] getKeyValue() {
        return keyValue;
    }

    public void setKeyValue(byte[] keyValue) {
        this.keyValue = keyValue;
    }
    @Column(name="operate_type")
    public String getOperateType() {
        return operateType;
    }

    public void setOperateType(String operateType) {
        this.operateType = operateType;
    }
    @Column(name="data_dui")
    public byte[] getDataDui() {
        return dataDui;
    }

    public void setDataDui(byte[] dataDui) {
        this.dataDui = dataDui;
    }
    @Column(name="olddata_upd")
    public byte[] getOlddataUpd() {
        return olddataUpd;
    }

    public void setOlddataUpd(byte[] olddataUpd) {
        this.olddataUpd = olddataUpd;
    }

    @Override
    public String toString() {
        return "ParaDifferenceCheckPublish{" +
                "tranTimestamp='" + tranTimestamp + '\'' +
                ", seriesNum=" + seriesNum +
                ", reqNo='" + reqNo + '\'' +
                ", tableFullName='" + tableFullName + '\'' +
                ", primaryKeyvalue='" + primaryKeyvalue + '\'' +
                ", keyValue=" + Arrays.toString(keyValue) +
                ", operateType='" + operateType + '\'' +
                ", dataDui=" + Arrays.toString(dataDui) +
                ", olddataUpd=" + Arrays.toString(olddataUpd) +
                '}';
    }
}
