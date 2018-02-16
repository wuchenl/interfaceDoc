package com.wuchen.interfacedoc.utils;

import java.io.File;
import java.io.FileOutputStream;

/**
 * @author vince
 * @version 0.1
 * @date 2018/1/26 14:58
 */
public class UtilsFile {
    public static void uploadFile(byte[] file, String filePath, String fileName) throws Exception {
        File targetFile = new File(filePath);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        FileOutputStream out = new FileOutputStream(filePath+fileName);
        out.write(file);
        out.flush();
        out.close();
    }
}
