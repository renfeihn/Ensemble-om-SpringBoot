package com.dcits.ensemble.om.model;


import javax.persistence.*;

/**
 * Created by ligan on 2018/8/14.
 */
@Entity
@Table(name = "user")
public class User {
    public User() {
    }

    public User(String username, String userpwd) {
        this.username = username;
        this.userpwd = userpwd;
    }

    private long userId;
    private String username;
    private String userpwd;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    @Column(name="user_name")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Column(name = "user_pwd")
    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", userpwd='" + userpwd + '\'' +
                '}';
    }
}
