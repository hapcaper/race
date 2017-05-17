package cn.springmvc.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import cn.springmvc.entry.User;

public interface UserDao {
    int insert(@Param("user") User user);

    int insertSelective(@Param("user") User user);

    int insertList(@Param("users") List<User> users);

    int update(@Param("user") User user);


}
