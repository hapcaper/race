package cn.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Work;

public interface WorkDAO {
	
	/**
	 * 按教师id查询所有学期的工作量
	 * @param tid
	 * @return
	 */
	List<Work> getWorkByTid(String tid);
	
	/**
	 * 按学期和教师id查询工作量
	 * @param term
	 * @param tid
	 * @return
	 */
	List<Work> getWorkByTermAndTid(@Param("term") int term, @Param("tid") String tid);
	
	/**
	 * 查询当前学期的工作量
	 * @param term
	 * @return
	 */
	List<Work> getWorkByTerm(int term);
	
	/**
	 * 查询当前学期的此项目的所有工作量
	 * @param term
	 * @param proname
	 * @return
	 */
	List<Work> getWorkByPronameAndterm(@Param("term") int term, @Param("proname") String proname);
	
	/**
	 * 添加一条work数据
	 * @param work
	 * @return
	 */
	int insertWork(Work work);
//	/**
//	 * 根据组员角色查询组员信息
//	 * 
//	 * @param duty
//	 * @return
//	 */
//	List<Teamer> getTreamByDuty(int duty);
//
//	/**
//	 * 根据人员id查询组员信息
//	 * 
//	 * @param mid
//	 * @return
//	 */
//	List<Teamer> getTeamByMid(String mid);
//
//	/**
//	 * 插入一条数据
//	 * 
//	 * @param teamer
//	 * @return
//	 */
//	int insertTeamer(Teamer teamer);
//
//	/**
//	 * 按照任务id修改任务状态
//	 * 
//	 * @param id
//	 * @param progress
//	 * @return
//	 */
//	int updateTeamerByProgress(@Param("id") int id,
//			@Param("progress") int progress);
//
//	/**
//	 * 更新任务记录
//	 * 
//	 * @param teamer
//	 * @return
//	 */
////	int updateTeamer(Teamer teamer);
//	/**
//	 * 根据项目的id查找人员
//	 */
//	List<Teamer> getTeamers(int id);
//
//	List<Teamer> getWorkTeamerByMemberid(String memberid);
//
//	void passProject(String proname);
//
//	List<Teamer> getTeamerByProname(String proname);
}
