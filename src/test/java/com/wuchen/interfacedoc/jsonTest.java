package com.wuchen.interfacedoc;

import com.wuchen.interfacedoc.utils.UtilsJson;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 15:36
 */
@Slf4j
public class jsonTest {
    @Test
    public void formatTest(){
        String json="";
        log.info("原来的json{}",json);
        json= UtilsJson.formatJson(json);
        log.info("现在格式化后的{}",json);
    }
}
