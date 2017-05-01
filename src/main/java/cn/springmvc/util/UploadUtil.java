package cn.springmvc.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadUtil {
	
	public static String uploadFile(MultipartFile file,HttpServletRequest request,String name){
    	String photoFile="";
    	if(file!=null){
			String path = request.getSession().getServletContext()
					.getRealPath("upload/user");
			String fileName = file.getOriginalFilename();
			if(!StringUtils.isEmpty(fileName)&&StringUtils.hasLength(fileName)){
				fileName = name 
						+ fileName.substring(fileName.lastIndexOf("."));
				File targetFile = new File(path, fileName);
				if (!targetFile.exists()) {
					targetFile.mkdirs();
				}
				// 保存
				try {
					file.transferTo(targetFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
				photoFile = "upload/user" + fileName;
			}
		}
    	return photoFile;
	}

}
