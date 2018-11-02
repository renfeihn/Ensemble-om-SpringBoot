package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_prod_define")
@IdClass(MbProdDefineKeysClass.class)
@Getter
@Setter
public class MbProdDefine implements Serializable {
    public MbProdDefine(){

    };

    public MbProdDefine(String prodType, String seqNo, String assembleType, String assembleId, String eventDefault, String attrKey, String attrValue, String status, String perEffect, String pageCode, Integer pageSeqNo) {
        this.prodType = prodType;
        this.seqNo = seqNo;
        this.assembleType = assembleType;
        this.assembleId = assembleId;
        this.eventDefault = eventDefault;
        this.attrKey = attrKey;
        this.attrValue = attrValue;
        this.status = status;
        this.perEffect = perEffect;
        this.pageCode = pageCode;
        this.pageSeqNo = pageSeqNo;
    }

    @Id
    @Column(name="prod_type")
    private String prodType;
    @Id
    @Column(name="seq_no")
    private String seqNo;
    @Column(name="assemble_type")
    private String assembleType;
    @Column(name="assemble_id")
    private String assembleId;
    @Column(name="event_default")
    private String eventDefault;
    @Column(name="attr_key")
    private String attrKey;
    @Column(name="attr_value")
    private String attrValue;
    @Column(name="status")
    private String status;
    @Column(name="per_effect")
    private String perEffect;
    @Column(name="page_code")
    private String pageCode;
    @Column(name="page_seq_no")
    private Integer pageSeqNo;
    @Column(name="option_permissions")
    private String optionPermissions;
    @Transient
    private String group;
    @Override
    public String toString() {
        return "MbProdDefine{" +
                "prodType='" + prodType + '\'' +
                ", seqNo='" + seqNo + '\'' +
                ", assembleType='" + assembleType + '\'' +
                ", assembleId='" + assembleId + '\'' +
                ", eventDefault='" + eventDefault + '\'' +
                ", attrKey='" + attrKey + '\'' +
                ", attrValue='" + attrValue + '\'' +
                ", status='" + status + '\'' +
                ", perEffect='" + perEffect + '\'' +
                ", pageCode='" + pageCode + '\'' +
                ", pageSeqNo='" + pageSeqNo + '\'' +
                '}';
    }
}
