package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class ParaDifferenceCheckPublishKeysClass implements Serializable {
    private String reqNo;
    private int seriesNum;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ParaDifferenceCheckPublishKeysClass that = (ParaDifferenceCheckPublishKeysClass) o;

        if (seriesNum != that.seriesNum) return false;
        return !(reqNo != null ? !reqNo.equals(that.reqNo) : that.reqNo != null);

    }

    @Override
    public int hashCode() {
        int result = reqNo != null ? reqNo.hashCode() : 0;
        result = 31 * result + seriesNum;
        return result;
    }
}
