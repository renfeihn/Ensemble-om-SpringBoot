package com.dcits.ensemble.om.model.dbmodel.system;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Getter
@Setter
public class OmParamPermDefClass implements Serializable {

    private String userId;
    private String systemId;
    private String modelId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmParamPermDefClass that = (OmParamPermDefClass) o;

        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (systemId != null ? !systemId.equals(that.systemId) : that.systemId != null) return false;
        return !(modelId != null ? !modelId.equals(that.modelId) : that.modelId != null);

    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        result = 31 * result + (systemId != null ? systemId.hashCode() : 0);
        result = 31 * result + (modelId != null ? modelId.hashCode() : 0);
        return result;
    }
}
