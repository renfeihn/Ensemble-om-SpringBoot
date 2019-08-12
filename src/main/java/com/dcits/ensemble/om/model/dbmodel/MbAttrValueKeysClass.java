package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Objects;

/**
 * Created by ligan on 2018/8/23.
 */
@Getter
@Setter
public class MbAttrValueKeysClass implements Serializable {
    private String attrKey;
    private String attrValue;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MbAttrValueKeysClass that = (MbAttrValueKeysClass) o;

        if (attrKey != null ? !attrKey.equals(that.attrKey) : that.attrKey != null) return false;
        return !(attrValue != null ? !attrValue.equals(that.attrValue) : that.attrValue != null);

    }

    @Override
    public int hashCode() {
        int result = attrKey != null ? attrKey.hashCode() : 0;
        result = 31 * result + (attrValue != null ? attrValue.hashCode() : 0);
        return result;
    }
}
