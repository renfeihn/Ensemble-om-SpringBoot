package com.dcits.ensemble.om.model.dbmodel;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class OmPageClassificationKeysClass implements Serializable {
    private String department;
    private String pageClass;
    private String attrKey;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmPageClassificationKeysClass that = (OmPageClassificationKeysClass) o;

        if (department != null ? !department.equals(that.department) : that.department != null) return false;
        if (pageClass != null ? !pageClass.equals(that.pageClass) : that.pageClass != null) return false;
        return !(attrKey != null ? !attrKey.equals(that.attrKey) : that.attrKey != null);

    }

    @Override
    public int hashCode() {
        int result = department != null ? department.hashCode() : 0;
        result = 31 * result + (pageClass != null ? pageClass.hashCode() : 0);
        result = 31 * result + (attrKey != null ? attrKey.hashCode() : 0);
        return result;
    }
}
