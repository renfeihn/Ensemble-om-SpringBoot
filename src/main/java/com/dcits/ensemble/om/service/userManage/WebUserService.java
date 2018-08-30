package com.dcits.ensemble.om.service.userManage;

import com.dcits.ensemble.om.repository.userManage.WebUserRespository;
import org.springframework.stereotype.Service;

/**
 * Created by jiajt on 2018/8/27.
 */
@Service
public class WebUserService {
//    @Autowired
    WebUserRespository webUserRespository;

    public boolean getUserMsgByUserId(String userId,String password){
//        WebUser webUser = webUserRespository.getUserMsgByUserId(userId,password);
        return userId.equals("admin") && password.equals("123456");
    }
}
