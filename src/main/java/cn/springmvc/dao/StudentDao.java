package cn.springmvc.dao;


import org.apache.ibatis.annotations.Param;

import java.util.List;
import cn.springmvc.entry.Student;


public interface StudentDao {
    int insert(@Param("pojo") Student pojo);

    int insertSelective(@Param("pojo") Student pojo);

    int insertList(@Param("pojos") List<Student> pojo);

    int update(@Param("pojo") Student pojo);

    List<Student> findByStuNumberAndPassWord(@Param("stuNumber")String stuNumber,@Param("passWord")String passWord);

    Student findById(@Param("id")Integer id);

	List<Student> findByStuId(@Param("stuId")String stuId);

	List<Student> find();

	List<Student> findByStatus(@Param("status")Integer status);



}
