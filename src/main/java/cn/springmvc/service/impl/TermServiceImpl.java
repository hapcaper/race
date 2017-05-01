package cn.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.dao.TermDAO;
import cn.springmvc.entry.Term;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.TermService;

@Transactional
@Service
public class TermServiceImpl implements TermService{
	
	@Autowired
	private TermDAO termDAO;

	@Override
	public ResultDO<List<Term>> getMaxTerm() {
		ResultDO<List<Term>> result = new ResultDO<List<Term>>();
		List<Term> list = termDAO.getMaxTerm();
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}

	@Override
	public int insertTerm(Term term) {
		int a = termDAO.insertTerm(term);
		return a;
	}

	@Override
	public ResultDO<List<Term>> getAllTerm() {
		ResultDO<List<Term>> result = new ResultDO<List<Term>>();
		List<Term> list = termDAO.getAllTerm();
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
		}
		return result;
	}

}
