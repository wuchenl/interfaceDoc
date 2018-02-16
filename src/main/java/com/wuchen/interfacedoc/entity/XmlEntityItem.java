package com.wuchen.interfacedoc.entity;

import lombok.Data;


/**
 * @author vince
 * @version 0.1
 * @date 2018/1/22 15:22
 */
// XML文件中的根标识
// 控制JAXB 绑定类中属性和字段的排序
@Data
public class XmlEntityItem {
    private String number;
}
