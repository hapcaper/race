package cn.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Race;
import cn.springmvc.entry.Task;

/**
 * 
 * @author lilia
 * 
 */
public interface RaceDAO {
	
//	/**
//	 * 获取所有赛事
//	 * @return
//	 */
//	List<Race> getAllRace();
	
	/**
	 * 添加一个赛事
	 * @param race
	 * @return
	 */
	int insertRace(Race race);
	
	/**
	 * 按教师id查询赛事
	 * @param tid
	 * @return
	 */
	List<Race> getRaceByTid(String tid);
	
	/**
	 * 按教师id和学期查询比赛
	 * @param term
	 * @param tid
	 * @return
	 */
	List<Race> getRaceByTermAndTid(@Param("term") int term, @Param("tid") String tid);
	
	/**
	 * 更新一个赛事
	 * @param race
	 * @return
	 */
	int updateRace(Race race);
//	/**
//	 * 获取所有任务
//	 * 
//	 * @return
//	 */
//	List<Task> getAllTask();
//
//	/**
//	 * 查询项目的任务
//	 * 
//	 * @param id
//	 * @return
//	 */
//	List<Task> getTaskByid(int id);
//	/**
//	 * 根据工程id和人员id查询任务
//	 * @param pid
//	 * @param mid
//	 * @return
//	 */
//	List<Task> getTaskByPidAndMid(@Param("pid") int pid, @Param("mid") String mid);
//
//	/**
//	 * 根据项目id查询任务数量
//	 * 
//	 * @param id
//	 * @return
//	 */
//	int countTaskByPid(int pid);
//
//	/**
//	 * 根据项目id 和人员id查询项目数量
//	 * 
//	 * @param pid
//	 * @param mid
//	 * @return
//	 */
//	int countTaskByPidAndMid(@Param("pid") int pid, @Param("mid") String mid);
//
//	/**
//	 * 根据项目id 人员id 任务状态查询任务数量
//	 * 
//	 * @param pid
//	 * @param mid
//	 * @param stu
//	 * @return
//	 */
//	int countTaskByPidAndMidAndStu(@Param("pid") int pid,
//			@Param("mid") String mid, @Param("stu") int stu);
//
//	/**
//	 * 根据项目id 任务状态查询任务个数；
//	 * 
//	 * @param pid
//	 * @param stu
//	 * @return
//	 */
//	int countTaskByPidAndStu(@Param("pid") int pid, @Param("stu") int stu);
//	
//	/**
//	 * 查询项目的任务
//	 * 
//	 * @param id
//	 * @return
//	 */
//	List<Task> getTaskBypid(int pid);
//	
//	void insertTask(Task task);
//
//	List<Task> getMyTask(String memberid, String projectname);
//
//	List<Task> getProjectTask(String projectname);
//
//	void completeTask(int tid);
//
	int updateRaceResult(@Param("id") int id, @Param("result") int result);
		
	
	
	List<Race> getAllRaceByTerm(@Param("term") int term);

	List<Race> getRaceById(@Param("id") int id);
	
}
