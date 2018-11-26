package com.dcits.ensemble.om.repository.system;

import com.dcits.ensemble.om.model.dbmodel.system.OmUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/11/21.
 */
public interface OmUserRepository extends JpaRepository<OmUser,Long>,JpaSpecificationExecutor<OmUser> {
    public OmUser findByUserId(String userId);
    List<OmUser> findByParentUserId(String parentUserId);
}
