package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_relation_hist")
@IdClass(OmProcessRelationHistKeysClass.class)
@Getter
@Setter
public class OmProcessRelationHist implements Serializable {
    public OmProcessRelationHist(String mainSeqNo, String dtlSeqNo, String recSeqNo, String tranId, String tranType, String tranName) {
        this.mainSeqNo = mainSeqNo;
        this.dtlSeqNo = dtlSeqNo;
        this.recSeqNo = recSeqNo;
        this.tranId = tranId;
        this.tranName = tranName;
        this.tranType = tranType;
    }

    public OmProcessRelationHist(){}
    @Id
    @Column(name="main_seq_no")
    private String mainSeqNo;
    @Id
    @Column(name="dtl_seq_no")
    private String dtlSeqNo;
    @Id
    @Column(name="rec_seq_no")
    private String recSeqNo;
    @Column(name="tran_id")
    private String tranId;
    @Column(name="tranName")
    private String tranName;
    @Column(name="tran_type")
    private String tranType;
    @Override
    public String toString() {
        return "OmProcessRelationHist{" +
                "mainSeqNo='" + mainSeqNo + '\'' +
                ", dtlSeqNo='" + dtlSeqNo + '\'' +
                ", recSeqNo='" + recSeqNo + '\'' +
                ", tranId='" + tranId + '\'' +
                ", tranType='" + tranType + '\'' +
                ", tranType='" + tranName + '\'' +
                '}';
    }
}
