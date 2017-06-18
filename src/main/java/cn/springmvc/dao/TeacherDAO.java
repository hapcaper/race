package cn.springmvc.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import cn.springmvc.entry.Teacher;

public interface TeacherDao {
    int insert(@Param("pojo") Teacher pojo);

    int insertSelective(@Param("pojo") Teacher pojo);

    int insertList(@Param("pojos") List<Teacher> pojo);

    int update(@Param("pojo") Teacher pojo);

    List<Teacher> findByTidAndPassword(@Param("tid")String tid,@Param("password")String password);

    List<Teacher> findByTid(@Param("tid")String tid);

    List<Teacher> findByStatus(@Param("status")Integer status);


}
