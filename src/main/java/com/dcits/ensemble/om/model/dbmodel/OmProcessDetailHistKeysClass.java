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
public class OmProcessDetailHistKeysClass implements Serializable {
    private String mainSeqNo;
    private BigDecimal dtlSeqNo;
    private String status;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmProcessDetailHistKeysClass that = (OmProcessDetailHistKeysClass) o;

        if (mainSeqNo != null ? !mainSeqNo.equals(that.mainSeqNo) : that.mainSeqNo != null) return false;
        if (dtlSeqNo != null ? !dtlSeqNo.equals(that.dtlSeqNo) : that.dtlSeqNo != null) return false;
        return !(status != null ? !status.equals(that.status) : that.status != null);

    }

    @Override
    public int hashCode() {
        int result = mainSeqNo != null ? mainSeqNo.hashCode() : 0;
        result = 31 * result + (dtlSeqNo != null ? dtlSeqNo.hashCode() : 0);
        result = 31 * result + (status != null ? status.hashCode() : 0);
        return result;
    }
}
