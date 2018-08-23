package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_prod_define")
@IdClass(MbProdDefine.class)
@Getter
@Setter
public class MbProdDefine implements Serializable {


    public MbProdDefine(String prodType, String seqNo, String assembleType, String assembleId, String eventDefault, String attrKey, String attrValue, String status) {
        this.prodType = prodType;
        this.seqNo = seqNo;
        this.assembleType = assembleType;
        this.assembleId = assembleId;
        this.eventDefault = eventDefault;
        this.attrKey = attrKey;
        this.attrValue = attrValue;
        this.status = status;
    }
    @Id
    @Column(name="prodType")
    private String prodType;
    @Id
    @Column(name="seqNo")
    private String seqNo;
    @Column(name="assembleType")
    private String assembleType;
    @Column(name="assembleId")
    private String assembleId;
    @Column(name="eventDefault")
    private String eventDefault;
    @Column(name="attrKey")
    private String attrKey;
    @Column(name="attrValue")
    private String attrValue;
    @Column(name="status")
    private String status;

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
                '}';
    }
}
