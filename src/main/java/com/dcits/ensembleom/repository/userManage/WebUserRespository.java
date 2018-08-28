package com.dcits.ensembleom.repository.userManage;

import com.dcits.ensembleom.model.dbmodel.system.WebUser;
import com.dcits.ensembleom.model.dbmodel.system.WebUserClass;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by jiajt on 2018/8/27.
 */
public interface WebUserRespository  {
     // extends JpaRepository<WebUser,WebUserClass>,JpaSpecificationExecutor<WebUser>
     WebUser getUserMsgByUserId (String userId, String password);
}
