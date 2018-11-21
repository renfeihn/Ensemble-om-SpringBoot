package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Entity
@Table(name = "OmParamPermDef")
@Getter
@Setter
public class OmParamPermDef implements Serializable {
    public OmParamPermDef () {}

    public OmParamPermDef(String userId, String systemId, String modelId, String permLevel) {
        this.userId = userId;
        this.systemId = systemId;
        this.modelId = modelId;
        this.permLevel = permLevel;
    }

    @Id
    @Column(name="user_id")
    private String userId;
    @Column(name="system_id")
    private String systemId;
    @Column(name="model_id")
    private String modelId;
    @Column(name="perm_level")
    private String permLevel;

    @Override
    public String toString() {
        return "OmParamPermDef{" +
                "userId='" + userId + '\'' +
                ", systemId='" + systemId + '\'' +
                ", modelId='" + modelId + '\'' +
                ", permLevel='" + permLevel + '\'' +
                '}';
    }
}
