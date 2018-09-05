package com.dcits.ensemble.om.repository.userManage;

import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

/**
 * Created by jiajt on 2018/8/27.
 */
public interface WebUserRespository extends JpaRepository<WebUser, Long>, JpaSpecificationExecutor<WebUser> {
    WebUser findByUserId(String userId);
}
