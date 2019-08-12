package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/8/24.
 */
@Getter
@Setter
public class GlProdAccountingKeysClass implements Serializable {
    private String prodType;
    private String accountingStatus;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GlProdAccountingKeysClass that = (GlProdAccountingKeysClass) o;

        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        return !(accountingStatus != null ? !accountingStatus.equals(that.accountingStatus) : that.accountingStatus != null);

    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (accountingStatus != null ? accountingStatus.hashCode() : 0);
        return result;
    }
}
