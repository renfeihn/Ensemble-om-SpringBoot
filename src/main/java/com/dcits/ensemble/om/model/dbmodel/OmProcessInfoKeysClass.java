package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class OmProcessInfoKeysClass implements Serializable {
    private String reqNo;
    private BigDecimal operatorNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmProcessInfoKeysClass that = (OmProcessInfoKeysClass) o;

        if (reqNo != null ? !reqNo.equals(that.reqNo) : that.reqNo != null) return false;
        return !(operatorNo != null ? !operatorNo.equals(that.operatorNo) : that.operatorNo != null);

    }

    @Override
    public int hashCode() {
        int result = reqNo != null ? reqNo.hashCode() : 0;
        result = 31 * result + (operatorNo != null ? operatorNo.hashCode() : 0);
        return result;
    }
}
