package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Project;
import cn.springmvc.entry.Race;
import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.Work;
import cn.springmvc.entry.result.ResultDO;

public interface WorkService {
	
	ResultDO<List<Work>> getWorkByTid(String tid);
	
	ResultDO<List<Work>> getWorkByTerm(int term);
	
	/**
	 * 得到这个项目的当前学期的最大工作量
	 * @param term
	 * @param proname
	 * @return
	 */
	ResultDO<Work> getMostWorkByProject(int term, Project project);
	
	/**
	 * 添加一个工作量
	 * @param project
	 * @param teacher
	 * @param term
	 * @return
	 */
	int addWork(Race race, Project project, Teacher teacher, int term);
	
	/**
	 * 查询一个老师的总工作量
	 * @param teacher
	 * @return
	 */
	float getMaxWorkByTeacher(Teacher teacher, int term);
	
}
