package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "mb_event_type")
@Getter
@Setter
public class MbEventType implements Serializable {
    public MbEventType(){

    }
    public MbEventType(String eventType, String eventDesc, String eventClass, String processMethod, String status, String isStandard, String company) {
        this.eventType = eventType;
        this.eventDesc = eventDesc;
        this.eventClass = eventClass;
        this.processMethod = processMethod;
        this.status = status;
        this.isStandard = isStandard;
        this.company = company;
    }

    @Id
    @Column(name="event_type")
   private String eventType;
    @Column(name="event_desc")
    private String eventDesc;
    @Column(name="event_class")
    private String eventClass;
    @Column(name="process_method")
    private String processMethod;
    @Column(name="status")
    private String status;
    @Column(name="is_standard")
    private String isStandard;
    @Column(name="company")
    private String company;

    @Override
    public String toString() {
        return "MbEventType{" +
                "eventType='" + eventType + '\'' +
                ", eventDesc='" + eventDesc + '\'' +
                ", eventClass='" + eventClass + '\'' +
                ", processMethod='" + processMethod + '\'' +
                ", status='" + status + '\'' +
                ", isStandard='" + isStandard + '\'' +
                ", company='" + company + '\'' +
                '}';
    }
}
