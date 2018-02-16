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
public class JXFoot {

    @JSONField(name = "has_operation_successful")
    private String hasOperationSuccessful;

    @JSONField(name = "hint")
    private String hint;

    @JSONField(name = "obtained_records_number")
    private String obtainedRecordsNumber;
    
    public String getHasOperationSuccessful() {
        return hasOperationSuccessful;
    }

    public JXFoot setHasOperationSuccessful(String hasOperationSuccessful) {
        this.hasOperationSuccessful = hasOperationSuccessful;
        return this;
    }
    
    public String getHint() {
        return hint;
    }

    public JXFoot setHint(String hint) {
        this.hint = hint;
        return this;
    }
    
    public String getObtainedRecordsNumber() {
        return obtainedRecordsNumber;
    }

    public JXFoot setObtainedRecordsNumber(String obtainedRecordsNumber) {
        this.obtainedRecordsNumber = obtainedRecordsNumber;
        return this;
    }
}
