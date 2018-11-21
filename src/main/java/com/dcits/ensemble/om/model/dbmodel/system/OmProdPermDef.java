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
@Table(name = "OmProdPermDef")
@Getter
@Setter
public class OmProdPermDef implements Serializable {

    public OmProdPermDef () {}

    public OmProdPermDef(String userId, String modelType, String permLevel) {
        this.userId = userId;
        this.modelType = modelType;
        this.permLevel = permLevel;
    }

    @Id
    @Column(name="user_id")
    private String userId;
    @Column(name="model_type")
    private String modelType;
    @Column(name="perm_level")
    private String permLevel;

    @Override
    public String toString() {
        return "OmProdPermDef{" +
                "userId='" + userId + '\'' +
                ", modelType='" + modelType + '\'' +
                ", permLevel='" + permLevel + '\'' +
                '}';
    }
}
