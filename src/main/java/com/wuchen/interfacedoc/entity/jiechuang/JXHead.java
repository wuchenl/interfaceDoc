package com.wuchen.interfacedoc.entity.jiechuang;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/25 17:53
 */
public class JXHead {
    @JSONField(name = "action_code")
    private String actionCode;

    @JSONField(name = "mechanism_code")
    private String mechanismCode;


    @JSONField(name = "create_date")
    private String createDate;
    
    public String getActionCode() {
        return actionCode;
    }

    public JXHead setActionCode(String actionCode) {
        this.actionCode = actionCode;
        return this;
    }
    
    public String getMechanismCode() {
        return mechanismCode;
    }

    public JXHead setMechanismCode(String mechanismCode) {
        this.mechanismCode = mechanismCode;
        return this;
    }
    
    public String getCreateDate() {
        return createDate;
    }

    public JXHead setCreateDate(String createDate) {
        this.createDate = createDate;
        return this;
    }
}
