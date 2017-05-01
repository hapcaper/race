package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Member;
import cn.springmvc.entry.result.ResultDO;

public interface MemberService {
	/**
	 * @author zgx
	 */
	/**
	 * 插入一条学生信息
	 * @param Member
	 * @return
	 */
	ResultDO<Member> insertMember(Member Member);
	/**
	 * 根据员工编号获得一条学生的信息
	 * @param mid
	 * @return
	 */
	ResultDO<Member> getMemberById(String mid);
	/**
	 * 根据员工姓名获得一条学生的信息
	 * @param name
	 * @return
	 */
	ResultDO<Member> getMemberByRoom(String name);
	/**
	 * 根据员工姓名获得一条学生的信息
	 * @param name
	 * @return
	 */
	ResultDO<Member> getMemberByDepanment(String Depanment);
	/**
	 * 获得全部的学生信息
	 * @return
	 */
	ResultDO<List<Member>> getAllMember();
	/**
	 * 根据员工的名称模糊查询学生列表
	 * @param name
	 * @return
	 */
	ResultDO<List<Member>> findMemberByName(String name);
	
	/**
	 * 获得一个部门的所有的学生列表
	 * @param departId
	 * @return
	 */
	ResultDO<List<Member>> findMemberByDepanmentId(String depanmentId);
	/**
	 * 修改学生信息
	 * 不需要修改的数据需要设置为null或者==0
	 * @param Member
	 * @return
	 */
	ResultDO<Member> updateMember(Member member);
	/**
	 * 删除成员的信息
	 * @param member
	 * @return
	 */
	ResultDO<Member> DeleteMember(String mid);
	
	/**
	 * 得到所有的没有在做工程的人员的ID和Name
	 * @return
	 */
	ResultDO<List<Member>> findNoWorkMember();
	
	
	
//	/**
//	 * 修改密码
//	 * @param id
//	 * @param passwd
//	 * @return
//	 */
//	ResultDO<Member> updateMemberPasswd(Member member,String oldPasswd,String passwd);
}
