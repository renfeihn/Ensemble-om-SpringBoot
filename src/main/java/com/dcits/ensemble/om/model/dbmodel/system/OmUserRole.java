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
@Table(name = "OmUserRole")
@Getter
@Setter
public class OmUserRole implements Serializable {
    public OmUserRole () {}

    public OmUserRole(String userId, String roleId) {
        this.userId = userId;
        this.roleId = roleId;
    }

    @Id
    @Column(name = "user_id")
    private String userId;
    @Column(name = "role_id")
    private String roleId;

    @Override
    public String toString() {
        return "OmUserRole{" +
                "userId='" + userId + '\'' +
                ", roleId='" + roleId + '\'' +
                '}';
    }
}
