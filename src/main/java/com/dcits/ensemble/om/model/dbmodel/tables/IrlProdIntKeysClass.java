package com.dcits.ensemble.om.model.dbmodel.tables;

import com.dcits.ensemble.om.model.dbmodel.OmProcessDetailHistKeysClass;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/8/24.
 */
@Getter
@Setter
public class IrlProdIntKeysClass implements Serializable {
    private String prodType;
    private String eventType;
    private String intClass;
    private String splitId;
    private String ruleId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IrlProdIntKeysClass that = (IrlProdIntKeysClass) o;

        if (prodType != null ? !prodType.equals(that.prodType) : that.prodType != null) return false;
        if (eventType != null ? !eventType.equals(that.eventType) : that.eventType != null) return false;
        if (splitId != null ? !splitId.equals(that.splitId) : that.splitId != null) return false;
        if (ruleId != null ? !ruleId.equals(that.ruleId) : that.ruleId != null) return false;
        return !(intClass != null ? !intClass.equals(that.intClass) : that.intClass != null);

    }

    @Override
    public int hashCode() {
        int result = prodType != null ? prodType.hashCode() : 0;
        result = 31 * result + (eventType != null ? eventType.hashCode() : 0);
        result = 31 * result + (intClass != null ? intClass.hashCode() : 0);
        result = 31 * result + (splitId != null ? splitId.hashCode() : 0);
        result = 31 * result + (ruleId != null ? ruleId.hashCode() : 0);

        return result;
    }
}
