package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_event_part")
@IdClass(MbEventPartKeysClass.class)
@Getter
@Setter
public class MbEventPart implements Serializable {
    public MbEventPart(){}
    public MbEventPart(String eventType, String assembleId, String attrKey, String attrValue) {
        this.eventType = eventType;
        this.assembleId = assembleId;
        this.attrKey = attrKey;
        this.attrValue = attrValue;
    }
    @Id
    @Column(name="event_type")
    private String eventType;
    @Id
    @Column(name="assemble_id")
    private String assembleId;
    @Id
    @Column(name="attr_key")
    private String attrKey;
    @Column(name="attr_value")
    private String attrValue;

    @Override
    public String toString() {
        return "MbEventPart{" +
                "eventType='" + eventType + '\'' +
                ", assembleId='" + assembleId + '\'' +
                ", attrKey='" + attrKey + '\'' +
                ", attrValue='" + attrValue + '\'' +
                '}';
    }
}
