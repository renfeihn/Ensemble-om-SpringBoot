package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/12/4.
 */
@Getter
@Setter
public class OmModuleOrgClass implements Serializable {

    private String moduleId;
    private String systemId;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmModuleOrgClass that = (OmModuleOrgClass) o;

        if (moduleId != null ? !moduleId.equals(that.moduleId) : that.moduleId != null) return false;
        return !(systemId != null ? !systemId.equals(that.systemId) : that.systemId != null);

    }

    @Override
    public int hashCode() {
        int result = moduleId != null ? moduleId.hashCode() : 0;
        result = 31 * result + (systemId != null ? systemId.hashCode() : 0);
        return result;
    };
}
