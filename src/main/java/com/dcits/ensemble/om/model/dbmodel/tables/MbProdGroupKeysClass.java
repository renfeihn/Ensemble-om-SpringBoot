package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;


@Getter
@Setter
public class MbProdGroupKeysClass implements Serializable {
    private String prodType;
    private String prodSubType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MbProdGroupKeysClass that = (MbProdGroupKeysClass) o;
        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        return !(prodSubType != null ? !prodSubType.equals(that.prodSubType) : that.prodSubType != null);
    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (prodSubType != null ? prodSubType.hashCode() : 0);
        return result;
    }
}
