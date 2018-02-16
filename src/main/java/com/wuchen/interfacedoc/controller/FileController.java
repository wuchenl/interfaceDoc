package com.wuchen.interfacedoc.controller;

import com.wuchen.interfacedoc.utils.UtilsFile;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/26 15:00
 */
@RestController
public class FileController {
    //处理文件上传
    @RequestMapping(value="/testuploadimg", method = RequestMethod.POST)
    public @ResponseBody
    String uploadImg(@RequestParam("file") MultipartFile file,
                     HttpServletRequest request) {
        String contentType = file.getContentType();
        String fileName = file.getOriginalFilename();
        /*System.out.println("fileName-->" + fileName);
        System.out.println("getContentType-->" + contentType);*/
        String filePath = "C:\\MyWork\\CCB\\interfacedoc\\src\\main\\resources\\static\\uploadFiles\\";
        System.out.println(filePath);
        try {
            UtilsFile.uploadFile(file.getBytes(), filePath, fileName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //返回json
        return "uploadimg success";
    }
}
