package cn.springmvc.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import cn.springmvc.entry.User;
import cn.springmvc.dao.UserDao;

@Service
public interface UserService{


    public int insert(User pojo);

    public int insertSelective(User pojo);

    public int insertList(List<User> pojos);

    public int update(User pojo);
}
