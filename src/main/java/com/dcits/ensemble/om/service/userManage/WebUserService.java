package com.dcits.ensemble.om.service.userManage;

import com.dcits.ensemble.om.model.dbmodel.system.OmUser;
import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.repository.system.OmUserRepository;
import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by jiajt on 2018/8/27.
 */
@Service
public class WebUserService {
    @Autowired
    private OmUserRepository omUserRepository;

    public boolean getUserMsgByUserId(String userId, String password) {
//        WebUser webUser = webUserRespository.getUserMsgByUserId(userId,password);
        return userId.equals("admin") && password.equals("123456");
    }

    public OmUser findByUsername(String username) {
        return omUserRepository.findByUserId(username);
    }

    public OmUser login(String userId) {
        OmUser webUser = omUserRepository.findByUserId(userId);
        if (webUser != null) {
            Subject currentUser = SecurityUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(webUser.getUserId(), webUser.getPassword());
            currentUser.login(token);
        }
        return webUser;
    }
}
