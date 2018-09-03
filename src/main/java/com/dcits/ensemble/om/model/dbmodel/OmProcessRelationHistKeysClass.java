package com.dcits.ensemble.om.model.dbmodel;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class OmProcessRelationHistKeysClass implements Serializable {
    private String mainSeqNo;
    private String dtlSeqNo;
    private String recSeqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmProcessRelationHistKeysClass that = (OmProcessRelationHistKeysClass) o;

        if (mainSeqNo != null ? !mainSeqNo.equals(that.mainSeqNo) : that.mainSeqNo != null) return false;
        if (dtlSeqNo != null ? !dtlSeqNo.equals(that.dtlSeqNo) : that.dtlSeqNo != null) return false;
        return !(recSeqNo != null ? !recSeqNo.equals(that.recSeqNo) : that.recSeqNo != null);

    }

    @Override
    public int hashCode() {
        int result = mainSeqNo != null ? mainSeqNo.hashCode() : 0;
        result = 31 * result + (dtlSeqNo != null ? dtlSeqNo.hashCode() : 0);
        result = 31 * result + (recSeqNo != null ? recSeqNo.hashCode() : 0);
        return result;
    }
}
