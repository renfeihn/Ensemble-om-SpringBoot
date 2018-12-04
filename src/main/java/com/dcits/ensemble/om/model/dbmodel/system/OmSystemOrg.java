package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/4.
 */
@Entity
@Table(name = "OmSystemOrg")
@Getter
@Setter
public class OmSystemOrg implements Serializable {
    public OmSystemOrg () {}

    public OmSystemOrg(String systemId, String systemName, String systemDesc) {
        this.systemId = systemId;
        this.systemName = systemName;
        this.systemDesc = systemDesc;
    }

    @Id
    @Column(name = "system_id")
    private String systemId;
    @Column(name = "system_name")
    private String systemName;
    @Column(name = "system_desc")
    private String systemDesc;

    @Override
    public String toString() {
        return "OmSystemOrg{" +
                "systemId='" + systemId + '\'' +
                ", systemName='" + systemName + '\'' +
                ", systemDesc='" + systemDesc + '\'' +
                '}';
    }
}
