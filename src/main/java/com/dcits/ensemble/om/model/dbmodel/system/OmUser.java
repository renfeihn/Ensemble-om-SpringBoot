package com.dcits.ensemble.om.model.dbmodel.system;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/11/21.
 */
@Entity
@Table(name = "OmUser")
@Getter
@Setter
public class OmUser implements Serializable {
    public OmUser () {}

    public OmUser(String userId, String userName, String password, String branch, String company, String userLevel, String parentUserId) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.branch = branch;
        this.company = company;
        this.userLevel = userLevel;
        this.parentUserId = parentUserId;
    }

    @Id
    @Column(name = "user_id")
    private String userId;
    @Column(name = "user_name")
    private String userName;
    @Column(name = "password")
    private String password;
    @Column(name = "branch")
    private String branch;
    @Column(name = "company")
    private String company;
    @Column(name = "user_level")
    private String userLevel;
    @Column(name = "parent_user_id")
    private String parentUserId;

    @Override
    public String toString() {
        return "OmUser{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", branch='" + branch + '\'' +
                ", company='" + company + '\'' +
                ", userLevel='" + userLevel + '\'' +
                ", parentUserId='" + parentUserId + '\'' +
                '}';
    }
}
