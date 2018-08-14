package com.dcits.ensembleom.repository;

import com.dcits.ensembleom.dbmodel.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by ligan on 2018/8/14.
 */
public interface  UserRepository extends JpaRepository<User,Long> {
    //查询用户名称包含username字符串的用户对象
    List<User> findByUsernameContaining(String username);

    //获得单个用户对象，根据username和pwd的字段匹配
    User getByUsernameIsAndUserpwdIs(String username,String pwd);

    //精确匹配username的用户对象
    User getByUsernameIs(String username);
}
