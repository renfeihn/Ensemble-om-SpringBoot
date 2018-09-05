package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/8/24.
 */
@Getter
@Setter
public class MbProdChargeKeysClass implements Serializable {
    private String prodType;
    private String feeType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MbProdChargeKeysClass that = (MbProdChargeKeysClass) o;
        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        return !(feeType != null ? !feeType.equals(that.feeType) : that.feeType != null);
    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (feeType != null ? feeType.hashCode() : 0);
        return result;
    }
}
