package com.dcits.ensemble.om.model.dbmodel.system;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "OmUserCollect")
@IdClass(OmUserCollectClass.class)
@Getter
@Setter
public class OmUserCollect implements Serializable {

    public OmUserCollect() {}

    public OmUserCollect(String userId, String prodType,String prodRange, String prodDesc, String sourceModule, String collectDate, String collectStatus) {
        this.userId = userId;
        this.prodType = prodType;
        this.prodRange = prodRange;
        this.prodDesc = prodDesc;
        this.sourceModule = sourceModule;
        this.collectDate = collectDate;
        this.collectStatus = collectStatus;
    }

    @Id
    @Column(name="prod_type")
    private String prodType;
    @Id
    @Column(name="user_id")
    private String userId;
    @Column(name="source_module")
    private String sourceModule;
    @Column(name="collect_date")
    private String collectDate;
    @Column(name="collect_status")
    private String collectStatus;
    @Column(name="prod_desc")
    private String prodDesc;
    @Column(name="prod_range")
    private String prodRange;
    @Override
    public String toString() {
        return "OmUserCollect{" +
                "userId='" + userId + '\'' +
                ", prodType='" + prodType + '\'' +
                ", prodDesc='" + prodDesc + '\'' +
                ", prodRange='" + prodRange + '\'' +
                ", sourceModule='" + sourceModule + '\'' +
                ", collectDate='" + collectDate + '\'' +
                ", collectStatus='" + collectStatus + '\'' +
                '}';
    }
}
