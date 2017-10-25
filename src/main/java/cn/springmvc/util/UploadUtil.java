package cn.springmvc.util;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class UploadUtil {
	
	public static String uploadFile(MultipartFile file,HttpServletRequest request){
    	String docFile="";
    	if(file!=null){
			String path = request.getSession().getServletContext()
					.getRealPath("document/");
			String fileName = file.getOriginalFilename();
			if(!StringUtils.isEmpty(fileName)&&StringUtils.hasLength(fileName)){

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
                docFile = "document/" + fileName;
			}
		}
    	return docFile;
	}

}
