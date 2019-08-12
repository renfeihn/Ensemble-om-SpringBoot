package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

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

    public OmProcessMainFlow(String mainSeqNo, String tranId, String tranDesc, String status, String isTranGroup, BigDecimal dtlSeqNo, String recSeqNo, String userId, String dispose) {
        this.mainSeqNo = mainSeqNo;
        this.tranId = tranId;
        this.tranDesc = tranDesc;
        this.status = status;
        this.isTranGroup = isTranGroup;
        this.dtlSeqNo = dtlSeqNo;
        this.recSeqNo = recSeqNo;
        this.userId = userId;
        this.dispose = dispose;
    }

    @Id
    @Column(name="main_seq_no")
    private String mainSeqNo;
    @Column(name="tran_id")
    private String tranId;
    @Column(name="tran_desc")
    private String tranDesc;
    @Column(name="status")
    private String status;
    @Column(name="is_tran_group")
    private String isTranGroup;
    @Column(name="dtl_seq_no")
    private BigDecimal dtlSeqNo;
    @Column(name="rec_seq_no")
    private String recSeqNo;
    @Column(name="user_id")
    private String userId;
    @Column(name="dispose")
    private String dispose;
    @Override
    public String toString() {
        return "OmProcessMainFlow{" +
                "mainSeqNo='" + mainSeqNo + '\'' +
                ", tranId='" + tranId + '\'' +
                ", tran_desc='" + tranDesc + '\'' +
                ", status='" + status + '\'' +
                ", isTranGroup='" + isTranGroup + '\'' +
                ", dtlSeqNo='" + dtlSeqNo + '\'' +
                ", userId='" + userId + '\'' +
                ", dispose='" + dispose + '\'' +
                ", recSeqNo='" + recSeqNo + '\'' +
                '}';
    }
}
