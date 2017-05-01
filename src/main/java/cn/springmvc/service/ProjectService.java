package cn.springmvc.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Project;
import cn.springmvc.entry.result.ResultDO;

public interface ProjectService {
	/**
	 * 得到所有的工程
	 * @return
	 */
	ResultDO<List<Project>> getAllProject();
	
	
	/**
	 * 添加一个项目
	 * @param project
	 * @return
	 */
	int insertProject(Project project);
	
	/**
	 * 根据tid查询此老师的所有项目
	 * @param tid
	 * @return
	 */
	ResultDO<List<Project>> getProjectByTid(String tid);


	ResultDO<List<Project>> getProjectByProname(@Param("proname") String proname);
	

//	/**
//	 * 修改项目
//	 * @param project
//	 * @return
//	 */
//	int updateProject(Project project);
//	
//	/**
//	 * 按状态查询项目
//	 * @param status
//	 * @return
//	 */
//	ResultDO<List<Project>> getProjectByStatus(int status);
//	
//	ResultDO<List<Project>> getProjectByMid(String id);
//	
//	ResultDO<List<Project>> getProjectByName(String name);
//	
//	ResultDO<List<Project>> getProjectByNameAndMid(String name,String id);
//	/**
//	 * 查找出来所有的未审核的项目
//	 * 即为未审核的项目和退回状态的项目
//	 */
//	ResultDO<List<Project>> getCheckPro();


}
