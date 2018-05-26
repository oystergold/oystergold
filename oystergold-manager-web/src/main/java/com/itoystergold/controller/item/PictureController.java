package com.itoystergold.controller.item;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.itoystergold.utils.UUIDUtil;

@Controller
public class PictureController {
	
	@Value("${pic_path}")
	private String PIC_PATH;
	
	@Value("${PIC_SERVER}")
	private String PIC_SERVER;
	
	@RequestMapping(value="/pic/upload")
	@ResponseBody
	public String  pictureLoad(MultipartFile uploadFile){
		
		try {
			
			
			String filename = uploadFile.getOriginalFilename();
			
			String extName = filename.substring(filename.lastIndexOf(".")+1);
			 String newFileName = null;
			if ("jpg".equalsIgnoreCase(extName)|| "png".equalsIgnoreCase(extName)||"bmp".equalsIgnoreCase(extName)) {
				File dir = new File(PIC_PATH);
		        if (!dir.isDirectory()){
		        	dir.mkdir();
		        }
		         newFileName = UUIDUtil.getUUID() + filename.substring(filename.lastIndexOf("."));
		        File dest = new File(PIC_PATH +"/"+ newFileName);
				uploadFile.transferTo(dest);
			}
			
			String url = PIC_SERVER +"/"+newFileName;
			
			
			Map result = new HashMap<>();
			result.put("error", 0);
			result.put("url", url);
			String json = JSON.toJSONString(result);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			Map result = new HashMap<>();
			result.put("error", 1);
			result.put("url", "图片上传失败");
			String json = JSON.toJSONString(result);
			return json;
		}
	}
}
