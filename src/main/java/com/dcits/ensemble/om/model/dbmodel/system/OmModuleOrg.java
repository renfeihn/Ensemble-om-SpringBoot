package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/4.
 */
@Entity
@Table(name = "OmModuleOrg")
@IdClass(OmModuleOrgClass.class)
@Getter
@Setter
public class OmModuleOrg implements Serializable {

    public OmModuleOrg () {}

    public OmModuleOrg(String moduleId, String systemId, String moduleName, String moduleDesc) {
        this.moduleId = moduleId;
        this.systemId = systemId;
        this.moduleName = moduleName;
        this.moduleDesc = moduleDesc;
    }

    @Id
    @Column(name="module_id")
    private String moduleId;
    @Id
    @Column(name="system_id")
    private String systemId;
    @Column(name="module_name")
    private String moduleName;
    @Column(name="module_desc")
    private String moduleDesc;

    @Override
    public String toString() {
        return "OmModuleOrg{" +
                "moduleId='" + moduleId + '\'' +
                ", systemId='" + systemId + '\'' +
                ", moduleName='" + moduleName + '\'' +
                ", moduleDesc='" + moduleDesc + '\'' +
                '}';
    }
}
