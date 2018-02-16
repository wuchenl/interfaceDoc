package com.wuchen.interfacedoc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/24 16:29
 */
@Controller
public class UrlController {
    @GetMapping("index")
    public String toIndex(){
        return "index";
    }

    @GetMapping("upload")
    public String goUploadImg() {
        //跳转到 templates 目录下的 upload.html
        return "upload";
    }
}
