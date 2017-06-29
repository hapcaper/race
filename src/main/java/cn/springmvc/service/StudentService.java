package cn.springmvc.service;

import cn.springmvc.entry.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ASUS on 2017/6/14.
 */
public interface StudentService {
    public int insert(Student pojo);
    public int insertSelective(Student pojo);
    public int insertList(List<Student> pojos);
    public int update(Student pojo);

    public List<Student> findByStuNumberAndPassWord(String stuNumber, String passWord);

    public Student findById(Integer id);

    public List<Student> findByStuId(String stuId);

    public List<Student> find();

    public List<Student> findByStatus(Integer status);

}
