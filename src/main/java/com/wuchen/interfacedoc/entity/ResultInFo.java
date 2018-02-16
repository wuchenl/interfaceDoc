package com.wuchen.interfacedoc.entity;

import lombok.Builder;
import lombok.Data;
import lombok.experimental.Accessors;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 15:12
 * 统一返回类
 */
@Data
@Accessors(chain = true)
public class ResultInFo<T> {
    /**
     * 返回请求代码
     */
    private int code;
    /**
     * 返回请求描述
     */
    private String msg;
    /**
     * 返回请求具体的值
     */
    private T data;

    public ResultInFo() {
    }

    public ResultInFo(ResultCode resultCode, T data) {
        this(resultCode);
        this.data = data;
    }

    public ResultInFo(ResultCode resultCode) {
        this.code = resultCode.getCode();
        this.msg = resultCode.getMsg();
    }
}
