package cn.springmvc.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Task;
import cn.springmvc.entry.result.ResultDO;

public interface TaskService {
	ResultDO<List<Task>> getAllTask();

	ResultDO<List<Task>> getTaskByMid(String mid);

	ResultDO<Integer> countTaskByPidAndMidAndStu(int pid, String mid, int stu);

	ResultDO<Integer> countTaskByPid(int pid);

	ResultDO<Integer> countTaskByPidAndMid(int pid, String mid);

	ResultDO<Integer> countTaskByPidAndStu(int pid, int stu);
	/**
	 * 根据项目id统计任务的数量
	 * 若状态为-1时间查询所有的任务数量
	 */
	double countNumByPid(int pid);
	/**
	 * 根据项目的id获得任务列表
	 */
	ResultDO<List<Task>> getTaskBypid(int pid);
	

	void insertTask(List<Task> tasklist);

	ResultDO<List<Task>> getMyTask(String memberid, String projectname);

	ResultDO<List<Task>> getProjectTask(String projectname);

	void completeTask(int tid);

}
