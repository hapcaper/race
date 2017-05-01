package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Term;
import cn.springmvc.entry.result.ResultDO;

public interface TermService {

	/**
	 * 得到最大的term
	 * @return
	 */
	ResultDO<List<Term>> getMaxTerm();
	
	/**
	 * 添加一个新的最大的term
	 * @param term
	 * @return
	 */
	int insertTerm(Term term);

	ResultDO<List<Term>> getAllTerm();
}
