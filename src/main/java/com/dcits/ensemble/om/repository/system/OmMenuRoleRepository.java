package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRole;
import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRoleClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/11/21.
 */
public  interface OmMenuRoleRepository extends JpaRepository<OmMenuRole,OmMenuRoleClass>,JpaSpecificationExecutor<OmMenuRole> {
    public OmMenuRole findByRoleIdAndMenuId(String roleId,String menuId);
    public List<OmMenuRole> findByRoleId(String roleId);
}
