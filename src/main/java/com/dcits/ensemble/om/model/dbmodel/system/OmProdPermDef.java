package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Entity
@Table(name = "OmProdPermDef")
@IdClass(OmProdPermDefClass.class)

@Getter
@Setter
public class OmProdPermDef implements Serializable {

    public OmProdPermDef () {}

    public OmProdPermDef(String userId, String modelType, String baseProdLevel, String soldProdLevel) {
        this.userId = userId;
        this.modelType = modelType;
        this.baseProdLevel = baseProdLevel;
        this.soldProdLevel = soldProdLevel;
    }

    @Id
    @Column(name="user_id")
    private String userId;
    @Column(name="model_type")
    private String modelType;
    @Column(name="base_prod_level")
    private String baseProdLevel;
    @Column(name="sold_prod_level")
    private String soldProdLevel;

    @Override
    public String toString() {
        return "OmProdPermDef{" +
                "userId='" + userId + '\'' +
                ", modelType='" + modelType + '\'' +
                ", baseProdLevel='" + baseProdLevel + '\'' +
                ", soldProdLevel='" + soldProdLevel + '\'' +
                '}';
    }
}
