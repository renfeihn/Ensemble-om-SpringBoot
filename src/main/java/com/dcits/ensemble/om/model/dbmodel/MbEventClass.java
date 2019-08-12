package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_event_class")
@Getter
@Setter
public class MbEventClass implements Serializable {
  public MbEventClass(){}

    public MbEventClass(String eventClass, String eventClassDesc, String eventClassLevel, String parentEventClass) {
        this.eventClass = eventClass;
        this.eventClassDesc = eventClassDesc;
        this.eventClassLevel = eventClassLevel;
        this.parentEventClass = parentEventClass;
    }

    @Id
    @Column(name="event_class")
    private String eventClass;
    @Column(name="event_class_desc")
    private String eventClassDesc;
    @Column(name="event_class_level")
    private String eventClassLevel;
    @Column(name="parent_event_class")
    private String parentEventClass;

    @Override
    public String toString() {
        return "MbEventClass{" +
                "eventClass='" + eventClass + '\'' +
                ", eventClassDesc='" + eventClassDesc + '\'' +
                ", eventClassLevel='" + eventClassLevel + '\'' +
                ", parentEventClass='" + parentEventClass + '\'' +
                '}';
    }
}
