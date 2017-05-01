package cn.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.dao.ProjectDAO;
import cn.springmvc.dao.WorkDAO;
import cn.springmvc.entry.Project;
import cn.springmvc.entry.Race;
import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.Work;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.WorkService;

@Transactional
@Service
public class WorkServiceImpl implements WorkService {

	@Autowired
	private WorkDAO workDAO;
	
	@Autowired
	private ProjectDAO projectDAO;

	@Override
	public ResultDO<List<Work>> getWorkByTid(String tid) {
		ResultDO<List<Work>> result = new ResultDO<List<Work>>();
		List<Work> list = workDAO.getWorkByTid(tid);
		result.setResult(list);
		result.setSuccess(true);
		if (result.getResult() == null) {
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public ResultDO<List<Work>> getWorkByTerm(int term) {
		ResultDO<List<Work>> result = new ResultDO<List<Work>>();
		List<Work> list = workDAO.getWorkByTerm(term);
		result.setResult(list);
		result.setSuccess(true);
		if (result.getResult() == null) {
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public ResultDO<Work> getMostWorkByProject(int term, Project project) {
		ResultDO<Work> result = new ResultDO<Work>();
		List<Work> list = workDAO.getWorkByPronameAndterm(term,
				project.getProname());
		Work work = null;
		if (list.size() == 0) {
			work = new Work();
			work.setWork(0);
		} else {
			work = list.get(0);
			for (Work w : list) {
				if (work.getWork() < w.getWork()) {
					work = w;
				}
			}
		}

		result.setResult(work);
		result.setSuccess(true);
		if (result.getResult() == null) {
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public int addWork(Race race, Project project, Teacher teacher, int term) {
		float w = 0;
		float h = 0;
		float l = 0;
		float f = 0;
		if (race.getRlevel() == 2) {
			h = (float) 1.0;		//省级及以上
		} else if (race.getRlevel() == 1) {
			h = (float) 0.8;		//校级
		}

		if (race.getResult() <= 2) {
			l = (float) 1.0;		//一 ， 二 等奖
		} else {
			l = (float) 0.9;		//其他奖
		}

		if (race.getKind() == 1) {
			f = (float) 1.0; // 作品型
		} else if (race.getKind() == 2) {
			f = (float) 0.7; // 考试型
		}

		Work work = new Work();
		work.setTid(teacher.getTid());
		work.setTerm(term);
		work.setProname(project.getProname());

		if (race.getKind() == 9) {
			work.setWork((float) 10.0);
		} else {
			w = (float)20 * h + l + f;
			work.setWork(w);
		}
		int a = workDAO.insertWork(work);
		return a;
	}

	@Override
	public float getMaxWorkByTeacher(Teacher teacher,int term) {
		float f = (float) 0;
		List<Project> plist = projectDAO.getProjectByTid(teacher.getTid());
		for(Project p : plist){
			float a = getMostWorkByProject(term, p).getResult().getWork();
			f+=a;
		}
		
		return f;
	}

}
