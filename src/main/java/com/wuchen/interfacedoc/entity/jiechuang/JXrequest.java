package com.wuchen.interfacedoc.entity.jiechuang;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.Data;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/26 10:51
 */
@Data
public class JXrequest {
    @JSONField(name = "package")
    private JXPackage jxPackage;
}
