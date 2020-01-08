package com.bailiban.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
public class UploadController {


    @GetMapping("/upload")
    public String upload(){
        return "upload";
    }

    @PostMapping("/upload")
    @ResponseBody
    public String upload(String fileName, MultipartFile uploadFile
    , HttpServletRequest request){
        //1.文件名处理，避免与本地重复
        String theName="";
        String originalFilename = uploadFile.getOriginalFilename();
        String type=originalFilename.substring(originalFilename.lastIndexOf("."));
        String uuid= UUID.randomUUID().toString();
        if(fileName==null){
            theName=uuid+"_"+originalFilename;
        }else {
            theName=fileName+"_"+uuid+type;
        }
        //2.找到upload路径
        ServletContext servletContext = request.getServletContext();
        //按日期建文件夹存储文件
        String date=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        String realPath = servletContext.getRealPath("/upload/"+date);
        System.out.println(realPath);
        File path=new File(realPath);
        //3.判断路径是否存在
        if(!path.exists()){
            path.mkdirs();
        }
        try {
            //4.保存文件
            uploadFile.transferTo(new File(path,theName));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
            return "upload failed.";
        }
        return "upload success.";
    }
}
