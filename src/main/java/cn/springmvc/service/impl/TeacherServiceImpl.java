package cn.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.dao.TeacherDAO;
import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.TeacherService;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherDAO teacherDAO;

	@Override
	public ResultDO<List<Teacher>> getTeacherByTid(String tid) {
		ResultDO<List<Teacher>> result = new ResultDO<List<Teacher>>();
		List<Teacher> list = teacherDAO.getTeacherByTid(tid);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
			result.setMessage("查询失败");
			
		}
		return result;
	}

	@Override
	public ResultDO<List<Teacher>> getTeacherByStatus(int status) {
		ResultDO<List<Teacher>> result = new ResultDO<List<Teacher>>();
		List<Teacher> list = teacherDAO.getAllTeacherByStatus(status);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
			result.setMessage("查询失败");
		}
		return result;
	}
	
	public ResultDO<List<Integer>> getMaxWorkListByTeacherList(List<Teacher> tlist){
		
		return null;
	}

}
