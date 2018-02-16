package com.wuchen.interfacedoc.controller;

import com.wuchen.interfacedoc.utils.UtilsJson;
import org.springframework.web.bind.annotation.*;

/**
 * @author vince
 * @version 0.1
 * json处理Controller
 * @date 2018/1/24 15:39
 */
@RestController
@RequestMapping("json")
public class JsonController {

    /**
     * 格式化Json数据测试
     * @param jsonText
     * @return
     */
    @PostMapping(produces = "application/json",value = "formatJson")
    public @ResponseBody String formatJson(@RequestBody String jsonText){
        return UtilsJson.formatJson(jsonText);
    }

    /**
     * 格式化Json数据测试
     * @param jsonText
     * @return
     */
    @PostMapping(produces = "application/json",value = "normalJson")
    public @ResponseBody String normalJson(@RequestBody String jsonText){
        return jsonText;
    }

    @PostMapping(value = "xml")
    public String xml(@RequestBody String xmlText){
        System.out.println(xmlText);
        return xmlText;
    }
}
