package com.dcits.ensemble.om.model.dbmodel.tables;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class IrlPeriSplitKeysClass implements Serializable {

    private String periSplitId;
    private String periSeqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IrlPeriSplitKeysClass that = (IrlPeriSplitKeysClass) o;

        if (periSplitId != null ? !periSplitId.equals(that.periSplitId) : that.periSplitId != null) return false;
        return !(periSeqNo != null ? !periSeqNo.equals(that.periSeqNo) : that.periSeqNo != null);

    }

    @Override
    public int hashCode() {
        int result = periSplitId != null ? periSplitId.hashCode() : 0;
        result = 31 * result + (periSeqNo != null ? periSeqNo.hashCode() : 0);
        return result;
    }
}
