package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Classes;
import cn.springmvc.entry.Professional;
import cn.springmvc.entry.result.ResultDO;

public interface ClassesService {
	/**
	 * 获取全部的专业列表
	 * @return
	 */
	ResultDO<List<Professional>> getAllProfessional();
	/**
	 * 获取全部的专业列表
	 * @return
	 */
	ResultDO<List<Classes>> getAllClasses();
}
