package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Getter
@Setter
public class OmMenuRoleClass implements Serializable {

    private String roleId;
    private String menuId;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        OmMenuRoleClass that = (OmMenuRoleClass) o;

        if (roleId != null ? !roleId.equals(that.roleId) : that.roleId != null) return false;
        return !(menuId != null ? !menuId.equals(that.menuId) : that.menuId != null);

    }

    @Override
    public int hashCode() {
        int result = roleId != null ? roleId.hashCode() : 0;
        result = 31 * result + (menuId != null ? menuId.hashCode() : 0);
        return result;
    }

}
