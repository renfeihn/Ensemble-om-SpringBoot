package com.dcits.ensemble.om.model;


import lombok.Getter;
import lombok.Setter;

import java.util.Map;

/**
 * Created by ligan on 2018/9/3.
 */
@Getter
@Setter
public class RequestBean {
    private String userName ;
    private Map body;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Map getBody() {
        return body;
    }

    public void setBody(Map body) {
        this.body = body;
    }
}
