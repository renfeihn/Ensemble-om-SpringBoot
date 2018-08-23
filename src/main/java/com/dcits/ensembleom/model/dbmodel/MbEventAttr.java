package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_event_attr")
@IdClass(MbEventAttrKeysClass.class)
@Getter
@Setter
public class MbEventAttr implements Serializable {
    public MbEventAttr(String eventType, String seqNo, String assembleType, String assembleId, String attrValue, String assembleRule) {
        this.eventType = eventType;
        this.seqNo = seqNo;
        this.assembleType = assembleType;
        this.assembleId = assembleId;
        this.attrValue = attrValue;
        this.assembleRule = assembleRule;
    }
    @Id
    @Column(name="eventType")
    private String eventType;
    @Id
    @Column(name="seqNo")
    private String seqNo;
    @Column(name="assembleType")
    private String assembleType;
    @Column(name="assembleId")
    private String assembleId;
    @Column(name="attrValue")
    private String attrValue;
    @Column(name="assembleRule")
    private String assembleRule;

    @Override
    public String toString() {
        return "MbEventAttr{" +
                "eventType='" + eventType + '\'' +
                ", seqNo='" + seqNo + '\'' +
                ", assembleType='" + assembleType + '\'' +
                ", assembleId='" + assembleId + '\'' +
                ", attrValue='" + attrValue + '\'' +
                ", assembleRule='" + assembleRule + '\'' +
                '}';
    }
}
