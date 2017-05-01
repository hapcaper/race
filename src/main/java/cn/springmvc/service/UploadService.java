package cn.springmvc.service;

import java.io.File;

import cn.springmvc.entry.Member;


public interface UploadService {
	
	public boolean uploadSingleFile(Member m, File file);

}
