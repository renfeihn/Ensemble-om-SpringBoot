package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmModuleOrg;
import com.dcits.ensemble.om.model.dbmodel.system.OmModuleOrgClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/12/4.
 */
public interface OmModuleOrgRepository extends JpaRepository<OmModuleOrg,OmModuleOrgClass>,JpaSpecificationExecutor<OmModuleOrg> {
}
