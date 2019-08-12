package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class OmUserCollectClass implements Serializable {

    private String userId;
    private String prodType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmUserCollectClass that = (OmUserCollectClass) o;

        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        return !(prodType != null ? !prodType.equals(that.prodType) : that.prodType != null);

    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        result = 31 * result + (prodType != null ? prodType.hashCode() : 0);
        return result;
    }
}
