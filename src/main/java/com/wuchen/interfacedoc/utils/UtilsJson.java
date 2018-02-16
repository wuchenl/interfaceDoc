package com.wuchen.interfacedoc.utils;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 15:29
 * 用于处理json的相关工具类
 */
public class UtilsJson {
    /**
     * 格式化json字符串
     * @param jsonText 原始字符串
     * @return 格式化后的字符串
     */
    public static String formatJson(String jsonText){
        Gson gson=new GsonBuilder().setPrettyPrinting().create();
        JsonParser jsonParser=new JsonParser();
        JsonElement jsonElement=jsonParser.parse(jsonText);
        return gson.toJson(jsonElement);
    }

    /**
     * 将一个对象格式化输出
     * @param object 原对象
     * @return 格式化后的字符串
     */
    public static String formatObject(Object object) {
        String json= JSON.toJSONString(object);
        return formatJson(json);
    }
}
