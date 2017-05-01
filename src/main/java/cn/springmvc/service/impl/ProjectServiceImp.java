package cn.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.dao.ProjectDAO;
import cn.springmvc.entry.Project;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.ProjectService;

@Service
@Transactional
public class ProjectServiceImp implements ProjectService {
	@Autowired
	private ProjectDAO projectDAO;


	@Override
	public ResultDO<List<Project>> getAllProject() {
		ResultDO<List<Project>> result = new ResultDO<List<Project>>();
		List<Project> list = projectDAO.getAllProject();
		result.setResult(list);
		result.setSuccess(true);
		if (result.getResult() == null) {
			result.setMessage("查询失败");
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public int insertProject(Project project) {
		int a = projectDAO.insertProject(project);
		return a;
	}

	@Override
	public ResultDO<List<Project>> getProjectByTid(String tid) {
		ResultDO<List<Project>> result = new ResultDO<List<Project>>();
		List<Project> list = projectDAO.getProjectByTid(tid);
		result.setResult(list); 
		result.setSuccess(true);
		if(result.getResult() == null){
			result.setMessage("查询失败");
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public ResultDO<List<Project>> getProjectByProname(String proname) {
		ResultDO<List<Project>> result = new ResultDO<List<Project>>();
		List<Project> list = projectDAO.getProjectByProname(proname);
		result.setResult(list); 
		result.setSuccess(true);
		if(result.getResult() == null){
			result.setMessage("查询失败");
			result.setSuccess(false);
		}
		return result;
		
	}

}
