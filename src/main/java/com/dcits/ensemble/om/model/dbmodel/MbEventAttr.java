package com.dcits.ensemble.om.model.dbmodel;


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
    public MbEventAttr(){

    }
    public MbEventAttr(String eventType, String seqNo, String assembleType, String assembleId, String attrValue, String assembleRule,String perEffect) {
        this.eventType = eventType;
        this.seqNo = seqNo;
        this.assembleType = assembleType;
        this.assembleId = assembleId;
        this.attrValue = attrValue;
        this.assembleRule = assembleRule;
        this.perEffect = perEffect;
    }
    @Id
    @Column(name="event_type")
    private String eventType;
    @Id
    @Column(name="seq_no")
    private String seqNo;
    @Column(name="assemble_type")
    private String assembleType;
    @Column(name="assemble_id")
    private String assembleId;
    @Column(name="attr_value")
    private String attrValue;
    @Column(name="assemble_rule")
    private String assembleRule;
    @Column(name="per_effect")
    private String perEffect;

    @Override
    public String toString() {
        return "MbEventAttr{" +
                "eventType='" + eventType + '\'' +
                ", seqNo='" + seqNo + '\'' +
                ", assembleType='" + assembleType + '\'' +
                ", assembleId='" + assembleId + '\'' +
                ", attrValue='" + attrValue + '\'' +
                ", assembleRule='" + assembleRule + '\'' +
                ", perEffect='" + perEffect + '\'' +
                '}';
    }
}
