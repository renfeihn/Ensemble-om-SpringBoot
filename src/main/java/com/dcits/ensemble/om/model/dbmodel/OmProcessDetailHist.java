package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by ligan on 2018/8/23.
 */
@Entity
@Table(name = "om_process_detail_hist")
@IdClass(OmProcessDetailHistKeysClass.class)
@Getter
@Setter
public class OmProcessDetailHist implements Serializable {
    public OmProcessDetailHist(){
        }

    public OmProcessDetailHist(String mainSeqNo, BigDecimal dtlSeqNo, String status, String remark, String isApproved, String userId, String clientIp, String tranTime) {
        this.mainSeqNo = mainSeqNo;
        this.dtlSeqNo = dtlSeqNo;
        this.status = status;
        this.remark = remark;
        this.isApproved = isApproved;
        this.userId = userId;
        this.clientIp = clientIp;
        this.tranTime = tranTime;
    }

    @Id
    @Column(name="main_seq_no")
    private String mainSeqNo;
    @Id
    @Column(name="dtl_seq_no")
    private BigDecimal dtlSeqNo;
    @Id
    @Column(name="status")
    private String status;
    @Column(name="remark")
    private String remark;
    @Column(name="is_approved")
    private String isApproved;
    @Column(name="user_id")
    private String userId;
    @Column(name="client_ip")
    private String clientIp;
    @Column(name="tran_time")
    private String tranTime;

    @Override
    public String toString() {
        return "OmProcessDetailHist{" +
                "mainSeqNo='" + mainSeqNo + '\'' +
                ", dtlSeqNo=" + dtlSeqNo +
                ", status='" + status + '\'' +
                ", remark='" + remark + '\'' +
                ", isApproved='" + isApproved + '\'' +
                ", userId='" + userId + '\'' +
                ", clientIp='" + clientIp + '\'' +
                ", tranTime='" + tranTime + '\'' +
                '}';
    }
}
