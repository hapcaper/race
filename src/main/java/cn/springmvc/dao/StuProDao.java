package cn.springmvc.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import cn.springmvc.entry.StuPro;

public interface StuProDao {
    int insert(@Param("pojo") StuPro pojo);

    int insertSelective(@Param("pojo") StuPro pojo);

    int insertList(@Param("pojos") List<StuPro> pojos);

    int update(@Param("pojo") StuPro pojo);
}
