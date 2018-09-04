package com.dcits.ensemble.om.service.userManage;

import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by jiajt on 2018/8/27.
 */
@Service
public class WebUserService {
    @Autowired
    WebUserRespository webUserRespository;

    public boolean getUserMsgByUserId(String userId, String password) {
//        WebUser webUser = webUserRespository.getUserMsgByUserId(userId,password);
        return userId.equals("admin") && password.equals("123456");
    }

    public WebUser findByUsername(String username) {
        return webUserRespository.findByUserId(username).get(0);
    }
}
