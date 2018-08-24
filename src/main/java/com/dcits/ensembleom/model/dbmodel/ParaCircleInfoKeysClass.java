package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class ParaCircleInfoKeysClass implements Serializable {
    private String reqNo;
    private String operatorType;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ParaCircleInfoKeysClass that = (ParaCircleInfoKeysClass) o;

        if (reqNo != null ? !reqNo.equals(that.reqNo) : that.reqNo != null) return false;
        return !(operatorType != null ? !operatorType.equals(that.operatorType) : that.operatorType != null);

    }

    @Override
    public int hashCode() {
        int result = reqNo != null ? reqNo.hashCode() : 0;
        result = 31 * result + (operatorType != null ? operatorType.hashCode() : 0);
        return result;
    }
}
