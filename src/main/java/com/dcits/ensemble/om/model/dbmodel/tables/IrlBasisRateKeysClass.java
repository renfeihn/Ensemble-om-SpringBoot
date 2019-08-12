package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class IrlBasisRateKeysClass implements Serializable {

    private String intBasis;
    private String ccy;
    private String effectDate;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IrlBasisRateKeysClass that = (IrlBasisRateKeysClass) o;

        if (intBasis != null ? !intBasis.equals(that.intBasis) : that.intBasis != null) return false;
        if (ccy != null ? !ccy.equals(that.ccy) : that.ccy != null) return false;
        return !(effectDate != null ? !effectDate.equals(that.effectDate) : that.effectDate != null);

    }

    @Override
    public int hashCode() {
        int result = intBasis != null ? intBasis.hashCode() : 0;
        result = 31 * result + (ccy != null ? ccy.hashCode() : 0);
        result = 31 * result + (effectDate != null ? effectDate.hashCode() : 0);
        return result;
    }
}
