package com.dcits.ensemble.om.repository.userManage;

import com.dcits.ensemble.om.model.dbmodel.system.WebUser;

/**
 * Created by jiajt on 2018/8/27.
 */
public interface WebUserRespository  {
     // extends JpaRepository<WebUser,WebUserClass>,JpaSpecificationExecutor<WebUser>
     WebUser getUserMsgByUserId (String userId, String password);
}
