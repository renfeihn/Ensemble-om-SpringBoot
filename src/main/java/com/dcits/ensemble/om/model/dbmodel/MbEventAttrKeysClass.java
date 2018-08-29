package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by ligan on 2018/8/23.
 */
@Getter
@Setter
public class MbEventAttrKeysClass implements Serializable {
    private String eventType;
    private String seqNo;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MbEventAttrKeysClass that = (MbEventAttrKeysClass) o;

        if (eventType != null ? !eventType.equals(that.eventType) : that.eventType != null) return false;
        return !(seqNo != null ? !seqNo.equals(that.seqNo) : that.seqNo != null);

    }

    @Override
    public int hashCode() {
        int result = eventType != null ? eventType.hashCode() : 0;
        result = 31 * result + (seqNo != null ? seqNo.hashCode() : 0);
        return result;
    }
}
