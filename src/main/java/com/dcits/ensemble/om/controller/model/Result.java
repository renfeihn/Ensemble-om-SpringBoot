package com.dcits.ensemble.om.controller.model;

/**
 * @Author chengliang
 * @Description //TODO
 * @Date 2018-09-04 17:39
 * @Version 1.0
 **/
public class Result<T> {

    private String code;
    private String msg;
    private T data;

    public Result(ResultCode resultCode, String msg) {
        this(resultCode);
        this.msg = msg;
    }

    public Result(ResultCode resultCode, T data) {
        this(resultCode);
        this.data = data;
    }

    public Result(ResultCode resultCode) {
        this.code = resultCode.getCode();
        this.msg = resultCode.getMsg();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
