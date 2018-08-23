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
    public MbEventPart(String eventType, String assembleId, String attrKey, String attrValue) {
        this.eventType = eventType;
        this.assembleId = assembleId;
        this.attrKey = attrKey;
        this.attrValue = attrValue;
    }
    @Id
    @Column(name="eventType")
    private String eventType;
    @Id
    @Column(name="assembleId")
    private String assembleId;
    @Id
    @Column(name="attrKey")
    private String attrKey;
    @Column(name="attrValue")
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
