package com.wuchen.interfacedoc.entity;

import lombok.Data;

import javax.xml.bind.annotation.*;
import java.util.List;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/22 15:08
 */
@XmlAccessorType(XmlAccessType.FIELD)
// XML文件中的根标识
@XmlRootElement(name = "body")
// 控制JAXB 绑定类中属性和字段的排序
@Data
public class XmlEntity {
    private String test;

    @XmlElement(name = "test_under")
    private String testUnder;
    private XmlEntityItem item;
    private ResultInFo resultInFo;

}
