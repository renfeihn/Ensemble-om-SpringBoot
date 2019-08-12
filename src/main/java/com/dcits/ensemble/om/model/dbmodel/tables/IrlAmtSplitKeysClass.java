package com.dcits.ensemble.om.model.dbmodel.tables;


import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class IrlAmtSplitKeysClass implements Serializable {

    private String amtSplitId;
    private String amtSeqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IrlAmtSplitKeysClass that = (IrlAmtSplitKeysClass) o;

        if (amtSplitId != null ? !amtSplitId.equals(that.amtSplitId) : that.amtSplitId != null) return false;
        return !(amtSeqNo != null ? !amtSeqNo.equals(that.amtSeqNo) : that.amtSeqNo != null);

    }

    @Override
    public int hashCode() {
        int result = amtSplitId != null ? amtSplitId.hashCode() : 0;
        result = 31 * result + (amtSeqNo != null ? amtSeqNo.hashCode() : 0);
        return result;
    }
}
