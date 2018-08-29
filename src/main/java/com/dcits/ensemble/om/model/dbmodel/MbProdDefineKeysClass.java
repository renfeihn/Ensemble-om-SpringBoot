package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class MbProdDefineKeysClass implements Serializable {
    private String prodType;
    private String seqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MbProdDefineKeysClass that = (MbProdDefineKeysClass) o;

        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        return !(seqNo != null ? !seqNo.equals(that.seqNo) : that.seqNo != null);

    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (seqNo != null ? seqNo.hashCode() : 0);
        return result;
    }
}
