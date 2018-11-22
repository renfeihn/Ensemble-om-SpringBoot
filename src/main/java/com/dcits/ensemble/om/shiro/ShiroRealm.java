package com.dcits.ensemble.om.shiro;

import com.dcits.ensemble.om.controller.userManage.UserLogin;
import com.dcits.ensemble.om.model.dbmodel.system.OmUser;
import com.dcits.ensemble.om.model.dbmodel.system.WebUser;
import com.dcits.ensemble.om.service.userManage.WebUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

/**
 * @Author chengliang
 * @Description //TODO
 * @Date 2018-09-04 10:58
 * @Version 1.0
 **/
public class ShiroRealm extends AuthorizingRealm {
    private static final Logger logger = LoggerFactory.getLogger(ShiroRealm.class);
    @Resource
    private WebUserService webUserService;


    /*主要是用来进行身份认证的，也就是说验证用户输入的账号和密码是否正确。*/
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
            throws AuthenticationException {
        //获取用户的输入的账号.
        String username = (String) token.getPrincipal();
        //通过username从数据库中查找 User对象，如果找到，没找到.
        //实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
        OmUser userInfo = webUserService.findByUsername(username);
        if (userInfo == null) {
            return null;
        }
//        if (userInfo.getState() == 1) { //账户冻结
//            throw new LockedAccountException();
//        }
        userInfo.setPassword(new Md5Hash(userInfo.getPassword(), username).toHex());
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
                userInfo, //用户名
                userInfo.getPassword(), //密码
                ByteSource.Util.bytes(userInfo.getUserId()),//salt=username+salt
                getName()  //realm name
        );
        return authenticationInfo;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
//        System.out.println("权限配置-->MyShiroRealm.doGetAuthorizationInfo()");
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        WebUser userInfo = (WebUser) principals.getPrimaryPrincipal();
//        for (SysRole role : userInfo.getRoleList()) {
//            authorizationInfo.addRole(role.getRole());
//            for (SysPermission p : role.getPermissions()) {
//                authorizationInfo.addStringPermission(p.getPermission());
//            }
//        }
        Set<String> roleSet = new HashSet<>();
        roleSet.add("100002");
        authorizationInfo.setRoles(roleSet);
        Set<String> permissionSet = new HashSet<>();
        permissionSet.add("权限添加");
        authorizationInfo.setStringPermissions(permissionSet);
        return authorizationInfo;
    }

}
