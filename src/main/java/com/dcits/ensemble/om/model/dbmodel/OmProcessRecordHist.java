package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_record_hist")
@IdClass(OmProcessRecordHistKeysClass.class)
@Getter
@Setter
public class OmProcessRecordHist {
    public OmProcessRecordHist(){

    }

    public OmProcessRecordHist(String recSeqNo, int subSeqNo, String mainSeqNo, String tableName, byte[] pkAndValue, String dmlType, byte[] dmlData, byte[] dmlOldData) {
        this.recSeqNo = recSeqNo;
        this.subSeqNo = subSeqNo;
        this.mainSeqNo = mainSeqNo;
        this.tableName = tableName;
        this.pkAndValue = pkAndValue;
        this.dmlType = dmlType;
        this.dmlData = dmlData;
        this.dmlOldData = dmlOldData;
    }

    @Id
    @Column(name="rec_seq_no")
    private String recSeqNo;
    @Id
    @Column(name="sub_seq_no")
    private int subSeqNo;
    @Column(name="main_seq_no")
    private String mainSeqNo;
    @Column(name="table_name")
    private String tableName;
    @Column(name="pk_and_value")
    private byte[] pkAndValue;
    @Column(name="dml_type")
    private String dmlType;
    @Column(name="dml_data")
    private byte[] dmlData;
    @Column(name="dml_old_data")
    private byte[] dmlOldData;

    @Override
    public String toString() {
        return "OmProcessRecordHist{" +
                "recSeqNo='" + recSeqNo + '\'' +
                ", subSeqNo=" + subSeqNo +
                ", mainSeqNo='" + mainSeqNo + '\'' +
                ", tableName='" + tableName + '\'' +
                ", pkAndValue=" + Arrays.toString(pkAndValue) +
                ", dmlType='" + dmlType + '\'' +
                ", dmlData=" + Arrays.toString(dmlData) +
                ", dmlOldData=" + Arrays.toString(dmlOldData) +
                '}';
    }
}
