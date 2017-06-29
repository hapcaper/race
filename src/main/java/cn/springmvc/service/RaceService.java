package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Race;
import cn.springmvc.entry.result.ResultDO;

public interface RaceService {
	
//	ResultDO<List<Race>> getAllRace();
	
	ResultDO<List<Race>> getRaceByTid(String tid);
	
	int insertRace(Race race);
	
	ResultDO<List<Race>> getRaceByTermAndTid(int term, String tid);

	int CompleteTace(Race race);

	ResultDO<List<Race>> getAllRaceByTerm(int i);

	ResultDO<List<Race>> getRaceById(int id);
	
	int updateRaceResult(int id, int result);
	
	int updateRace(Race race);

	List<Race> findByStuId(Integer stuid);
}
