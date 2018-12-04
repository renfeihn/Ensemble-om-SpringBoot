package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmSystemOrg;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/12/4.
 */
public interface OmSystemOrgRepository extends JpaRepository<OmSystemOrg,Long>,JpaSpecificationExecutor<OmSystemOrg> {
}
