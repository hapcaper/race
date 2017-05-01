package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.result.ResultDO;

public interface TeacherService {

	ResultDO<List<Teacher>> getTeacherByTid(String tid);
	
	ResultDO<List<Teacher>> getTeacherByStatus(int status);
}
