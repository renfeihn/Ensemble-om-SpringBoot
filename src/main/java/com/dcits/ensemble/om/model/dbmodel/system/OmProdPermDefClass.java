package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Getter
@Setter
public class OmProdPermDefClass implements Serializable {

    private String userId;
    private String modelType;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmProdPermDefClass that = (OmProdPermDefClass) o;

        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        return !(modelType != null ? !modelType.equals(that.modelType) : that.modelType != null);

    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        result = 31 * result + (modelType != null ? modelType.hashCode() : 0);
        return result;
    }

}
