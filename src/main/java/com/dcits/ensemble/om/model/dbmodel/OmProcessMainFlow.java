package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_main_flow")
@Getter
@Setter
public class OmProcessMainFlow {
    public OmProcessMainFlow(){

    }
    public OmProcessMainFlow(String mainSeqNo, String tranId, String tran_desc, String status, String isTranGroup, String dtlSeqNo, String recSeqNo) {
        this.mainSeqNo = mainSeqNo;
        this.tranId = tranId;
        this.tran_desc = tran_desc;
        this.status = status;
        this.isTranGroup = isTranGroup;
        this.dtlSeqNo = dtlSeqNo;
        this.recSeqNo = recSeqNo;
    }

    @Id
    @Column(name="main_seq_no")
    private String mainSeqNo;
    @Column(name="tran_id")
    private String tranId;
    @Column(name="tran_desc")
    private String tran_desc;
    @Column(name="status")
    private String status;
    @Column(name="is_tran_group")
    private String isTranGroup;
    @Column(name="dtl_seq_no")
    private String dtlSeqNo;
    @Column(name="rec_seq_no")
    private String recSeqNo;

    @Override
    public String toString() {
        return "OmProcessMainFlow{" +
                "mainSeqNo='" + mainSeqNo + '\'' +
                ", tranId='" + tranId + '\'' +
                ", tran_desc='" + tran_desc + '\'' +
                ", status='" + status + '\'' +
                ", isTranGroup='" + isTranGroup + '\'' +
                ", dtlSeqNo='" + dtlSeqNo + '\'' +
                ", recSeqNo='" + recSeqNo + '\'' +
                '}';
    }
}
