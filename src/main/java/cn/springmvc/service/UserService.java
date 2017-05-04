package cn.springmvc.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import cn.springmvc.entry.User;
import cn.springmvc.dao.UserDao;

@Service
public interface UserService{


    public int insert(User user);

    public int insertSelective(User user);

    public int insertList(List<User> users);

    public int update(User user);

    public List<User> findByEmailAndPassword(String email,String password);

    public List<String> findEmailByEmail(String email);
}
