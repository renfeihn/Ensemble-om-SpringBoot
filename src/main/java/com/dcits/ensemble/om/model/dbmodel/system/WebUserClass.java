package com.dcits.ensemble.om.model.dbmodel.system;

import com.dcits.ensemble.om.model.dbmodel.MbEventAttrKeysClass;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/8/27.
 */
@Getter
@Setter
public class WebUserClass implements Serializable {
    private String userId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WebUserClass that = (WebUserClass) o;

        if (userId != null ? !userId.equals(that.userId) : that.userId != null)
            return false;
        else
            return true;
    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        return result;
    }
}
