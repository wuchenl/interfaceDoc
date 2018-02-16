package com.wuchen.interfacedoc.entity.jiechuang;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/25 17:52
 */
@Data
public class JXPackage {
    private JXHead head;
    private JXBody body;
    @JSONField(name = "addition_information")
    private JXFoot foot;
}
