package cn.springmvc.dao;

import java.util.List;

import cn.springmvc.entry.Term;

public interface TermDAO {
	
	/**
	 * 得到当前的学期
	 * @return
	 */
	List<Term> getMaxTerm();
	
	/**
	 * 插入一个term
	 * @param term
	 * @return
	 */
	int insertTerm(Term term);

	List<Term> getAllTerm();
	
}
