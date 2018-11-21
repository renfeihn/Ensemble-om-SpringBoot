package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRole;
import com.dcits.ensemble.om.model.dbmodel.system.OmMenuRoleClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/11/21.
 */
public  interface OmMenuRoleRepository extends JpaRepository<OmMenuRole,OmMenuRoleClass>,JpaSpecificationExecutor<OmMenuRole> {
}
