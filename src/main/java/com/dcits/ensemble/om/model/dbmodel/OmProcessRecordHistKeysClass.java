package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class OmProcessRecordHistKeysClass implements Serializable {
    private String recSeqNo;
    private int subSeqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmProcessRecordHistKeysClass that = (OmProcessRecordHistKeysClass) o;

        if (subSeqNo != that.subSeqNo) return false;
        return !(recSeqNo != null ? !recSeqNo.equals(that.recSeqNo) : that.recSeqNo != null);

    }

    @Override
    public int hashCode() {
        int result = recSeqNo != null ? recSeqNo.hashCode() : 0;
        result = 31 * result + subSeqNo;
        return result;
    }
}
