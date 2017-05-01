package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Depanment;
import cn.springmvc.entry.result.ResultDO;

public interface DepanmentService {
	/**
	 * @author zgx
	 */
	
	/**
	 * 插入一条部门信息
	 * @param department
	 * @return
	 */
	ResultDO<Depanment> insertDepanment(Depanment depanment);
	/**
	 * 根据部门id获得一个部门的对象
	 * @param id
	 * @return
	 */
	ResultDO<Depanment> getDepanmentById(int id);
	/**
	 * 根据部门名字获得一个部门的对象
	 * @param name
	 * @return
	 */
	public ResultDO<List<Depanment>> getDepanmentByName(String name) ;
	/**
	 * 获取全部的部门列表
	 * @return
	 */
	ResultDO<List<Depanment>> getAllDepanment();

	/**
	 * 修改一个部门的信息
	 * @param depanment
	 * @return
	 */
	ResultDO<Depanment> updateDepanment(Depanment depanment);
	/**
	 * 删除一个部门信息，使用status来进行逻辑删除
	 * @param departId
	 * @return
	 */
	ResultDO<Depanment> deleteDepanment(int depanmentId);
	/**
	 * 调动部门
	 */
	ResultDO<Depanment> tranferDepanment(int depanmentId);
	
	
	ResultDO<List<Depanment>> queryDepanmentByName(String name);
	
	
}
