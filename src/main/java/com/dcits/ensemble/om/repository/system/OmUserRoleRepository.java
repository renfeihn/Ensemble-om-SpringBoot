package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmUserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/11/21.
 */
public interface OmUserRoleRepository extends JpaRepository<OmUserRole,Long>,JpaSpecificationExecutor<OmUserRole> {
    public OmUserRole findByUserId(String userId);
}
