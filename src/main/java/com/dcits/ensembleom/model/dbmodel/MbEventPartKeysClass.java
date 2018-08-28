package com.dcits.ensembleom.model.dbmodel;


import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;

/**
 * Created by ligan on 2018/8/14.
 */
@Getter
@Setter
public class MbEventPartKeysClass implements Serializable {
    private String eventType;
    private String assembleId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MbEventPartKeysClass that = (MbEventPartKeysClass) o;

        if (eventType != null ? !eventType.equals(that.eventType) : that.eventType != null) return false;
        if (assembleId != null ? !assembleId.equals(that.assembleId) : that.assembleId != null) return false;
        return !(attrKey != null ? !attrKey.equals(that.attrKey) : that.attrKey != null);

    }

    @Override
    public int hashCode() {
        int result = eventType != null ? eventType.hashCode() : 0;
        result = 31 * result + (assembleId != null ? assembleId.hashCode() : 0);
        result = 31 * result + (attrKey != null ? attrKey.hashCode() : 0);
        return result;
    }

    private String attrKey;
}
