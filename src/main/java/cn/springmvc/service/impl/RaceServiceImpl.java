package cn.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.dao.RaceDAO;
import cn.springmvc.entry.Race;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.RaceService;

@Service
@Transactional
public class RaceServiceImpl implements RaceService {

	@Autowired
	private RaceDAO raceDAO;
	
	
	@Override
	public ResultDO<List<Race>> getRaceByTid(String tid) {
		ResultDO<List<Race>> result = new ResultDO<List<Race>>();
		List<Race> list = raceDAO.getRaceByTid(tid);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public int insertRace(Race race) {
		int a = raceDAO.insertRace(race);
		return a;
	}

	@Override
	public ResultDO<List<Race>> getRaceByTermAndTid(int term, String tid) {
		ResultDO<List<Race>> result = new ResultDO<List<Race>>();
		List<Race> list = raceDAO.getRaceByTermAndTid(term, tid);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}


	@Override
	public int CompleteTace(Race race) {
		int a = raceDAO.updateRace(race);
		return a;
	}

	@Override
	public ResultDO<List<Race>> getAllRaceByTerm(int term) {
		ResultDO<List<Race>> result = new ResultDO<List<Race>>();
		List<Race> list = raceDAO.getAllRaceByTerm(term);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public ResultDO<List<Race>> getRaceById(int id) {
		ResultDO<List<Race>> result = new ResultDO<List<Race>>();
		List<Race> list = raceDAO.getRaceById(id);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public int updateRaceResult(int id, int result) {
		int a =raceDAO.updateRaceResult(id, result);
		return a;
	}

    @Override
    public List<Race> findByStuId(Integer stuid) {
        return raceDAO.findByStuId(stuid);
    }

    @Override
	public int updateRace(Race race) {
		return raceDAO.updateRace(race);
	}

}
