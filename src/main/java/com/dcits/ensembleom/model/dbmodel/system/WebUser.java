package com.dcits.ensembleom.model.dbmodel.system;

import com.dcits.ensembleom.model.dbmodel.MbEventAttrKeysClass;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by jiajt on 2018/8/27.
 */
@Entity
@Table(name = "web_user")
@Getter
@Setter
public class WebUser implements Serializable {
    public WebUser(){}

    public WebUser(String userId, String userName, String password, String message, String organization, String legalentity){
        this.userId =userId;
        this.userName = userName;
        this.password = password;
        this.message = message;
        this.organization = organization;
        this.legalentity = legalentity;
    }

    @Id
    @Column(name="user_id")
    private String userId;
    @Id
    @Column(name="user_name")
    private String userName;
    @Column(name="password")
    private String password;
    @Column(name="message")
    private String message;
    @Column(name="organization")
    private String organization;
    @Column(name="legalentity")
    private String legalentity;

    @Override
    public String toString() {
        return "WebUser{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", message='" + message + '\'' +
                ", organization='" + organization + '\'' +
                ", legalentity='" + legalentity + '\'' +
                '}';
    }
}
