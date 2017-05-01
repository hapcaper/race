package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Member;
import cn.springmvc.entry.Teamer;
import cn.springmvc.entry.result.ResultDO;

public interface TeamerService {
	ResultDO<List<Member>> getTeamerByDuty(int duty);
	/**
	 * 根据项目id或者组员
	 */
	ResultDO<List<Teamer>> getTeamerBypid(int pid);
	
	
	void insertTeamer(List<Teamer> teamerlist);
	
	
	ResultDO<List<Teamer>> getWorkTeamerByMemberid(String memberid);
	
	void passProject(String string);
	
	ResultDO<List<Teamer>> getTeamerByProname(String proname);
}
