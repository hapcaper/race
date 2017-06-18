package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.result.ResultDO;

public interface TeacherService {

	ResultDO<List<Teacher>> getTeacherByTid(String tid);
	
	ResultDO<List<Teacher>> getTeacherByStatus(int status);

    List<Teacher> findByTidAndPassword(String tid,String password);
    List<Teacher> findByTid(String tid);
    List<Teacher> findByStatus(Integer status);

    int insert( Teacher pojo);
    int insertSelective( Teacher pojo);
    int insertList( List<Teacher> pojo);
    int update( Teacher pojo);

}
