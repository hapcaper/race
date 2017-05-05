package cn.springmvc.service;

import java.io.File;

import cn.springmvc.entry.User;


public interface UploadService {
	
	public boolean uploadSingleFile(User u, File file);

}
