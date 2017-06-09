package cn.springmvc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.springmvc.entry.Teacher;

public interface TeacherDAO {
	
	/**
	 * 以教师tid查询教师
	 * @param tid
	 * @return
	 */
	List<Teacher> getTeacherByTid(String tid);
	
	List<Teacher> getAllTeacherByStatus(@Param("status") int status);

	
//	/**
//	 * 插入一条教师信息
//	 * @param employee
//	 * @return
//	 */
//	int insertTeacher(Teacher teacher);
//	
//	/**
//	 * 根据教师编号获得一条员工的信息
//	 * @param eno
//	 * @return
//	 */
//   Teacher getTeacherById(String id);
//   /**
//	 * 根据名字获得一个教师对象
//	 * @param name
//	 * @return
//	 */
////   int getTeacherCountByName(String name);
//   /**
//	 * 获得全部的教师信息
//	 * @return
//	 */
//	List<Teacher> getAllTeacher();
//	/**
//	 * 根据员工的名称模糊查询员工列表
//	 * @param name
//	 * @return
//	 */
////	List<Teacher> findTeacherByName(String name);
//	/**
//	 * 修改教师信息
//	 * 不需要修改的数据需要设置为null或者==0
//	 * @param employee
//	 * @return
//	 */
//	int updateTeacher(Teacher teacher);
//	/**
//	 * 修改密码
//	 * @param id
//	 * @param passwd
//	 * @return
//	 */
////	int updateTeacherPasswd(String id,String passwd);
}
