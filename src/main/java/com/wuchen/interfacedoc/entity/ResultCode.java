package com.wuchen.interfacedoc.entity;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 15:16
 */
public enum  ResultCode {
    SUCCESS(200, "请求成功"),
    WEAK_NET_WORK(-1, "网络异常，请稍后重试"),
    PASSWORD_ERROR(10001, "用户名或密码错误"),
    PARAMETER_ERROR(10101, "参数错误"),
    JSON_ERROR(2001,"传入JSON格式不正确");

    private int code;
    private String msg;

    ResultCode(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
