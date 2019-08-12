package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by zjy on 2019/3/29.
 */
@Entity
@Table(name = "fm_company")
@Getter
@Setter
public class FmCompany implements Serializable{
    public FmCompany () {}

    public FmCompany(String company, String companyName, String headOfficeCode, String companyClientNo, String systemPhase, String multiCorpQueryAllow, String tranTime, String tranTimestamp, String routerKey) {
        this.company = company;
        this.companyName = companyName;
        this.headOfficeCode = headOfficeCode;
        this.companyClientNo = companyClientNo;
        this.systemPhase = systemPhase;
        this.multiCorpQueryAllow = multiCorpQueryAllow;
        this.tranTime = tranTime;
        this.tranTimestamp = tranTimestamp;
        this.routerKey = routerKey;
    }

    @Id
    @Column(name="company")
    private String company;
    @Column(name="companyName")
    private String companyName;
    @Column(name="headOfficeCode")
    private String headOfficeCode;
    @Column(name="companyClientNo")
    private String companyClientNo;
    @Column(name="systemPhase")
    private String systemPhase;
    @Column(name="multiCorpQueryAllow")
    private String multiCorpQueryAllow;
    @Column(name="tranTime")
    private String tranTime;
    @Column(name="tranTimestamp")
    private String tranTimestamp;
    @Column(name="routerKey")
    private String routerKey;

    @Override
    public String toString() {
        return "FmCompany{" +
                "company='" + company + '\'' +
                ", companyName='" + companyName + '\'' +
                ", headOfficeCode='" + headOfficeCode + '\'' +
                ", companyClientNo='" + companyClientNo + '\'' +
                ", systemPhase='" + systemPhase + '\'' +
                ", multiCorpQueryAllow='" + multiCorpQueryAllow + '\'' +
                ", tranTime='" + tranTime + '\'' +
                ", tranTimestamp='" + tranTimestamp + '\'' +
                ", routerKey='" + routerKey + '\'' +
                '}';
    }
}