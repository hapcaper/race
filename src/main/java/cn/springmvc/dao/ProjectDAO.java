package cn.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Project;

public interface ProjectDAO {
	/**
	 * 查询所有项目
	 * 
	 * @author ASUS
	 * @return
	 */
	
	List<Project> getAllProject();
	
	/**
	 * 按教师tid查询项目
	 * @param tid
	 * @return
	 */
	List<Project> getProjectByTid(String tid);
	


//	/**
//	 * 通过项目名称查询项目
//	 * 
//	 * @param name
//	 * @return
//	 */
//	List<Project> getProjectByName(String name);
//
//	/**
//	 * 查询项目信息，根据项目id
//	 * 
//	 * @param id
//	 * @return
//	 */
//	Project getProjectByID(int id);

	/**
	 * 向数据库添加一个项目
	 * 
	 * @author ASUS
	 * @param project
	 * @return int
	 */
	int insertProject(Project project);
//
//	/**
//	 * 修改一个项目
//	 * 
//	 * @author ASUS
//	 * @param project
//	 * @return int
//	 */
//	int updateProject(Project project);
//
//	/**
//	 * 按状态查询项目
//	 * 
//	 * @author ASUS
//	 * @param status
//	 * @return List<Project>
//	 */
//	List<Project> getProjectByStatus(int status);
//	/**
//	 *  修改项目状态
//	 * @param proId
//	 * @param status
//	 * @return
//	 */
//	boolean updateProStatus(int proId,int status);
//	/**
//	 * 根据项目状态查询项目
//	 * @param list
//	 * @return
//	 */
//	List<Project> getProStatus(List<Integer> list);

	List<Project> getProjectByProname(@Param("proname") String proname);
	
}
