package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class GlProdCodeMappingKeysClass implements Serializable {
    private String prodType;
    private String status;
    private String amtType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        GlProdCodeMappingKeysClass that = (GlProdCodeMappingKeysClass) o;

        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        if (status != null ? !status.equals(that.status) : that.status != null) return false;
        return !(amtType != null ? !amtType.equals(that.amtType) : that.amtType != null);

    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (status != null ? status.hashCode() : 0);
        result = 31 * result + (amtType != null ? amtType.hashCode() : 0);
        return result;
    }
}
