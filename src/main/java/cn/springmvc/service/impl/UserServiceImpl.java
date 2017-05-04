package cn.springmvc.service.impl;

import cn.springmvc.dao.UserDao;
import cn.springmvc.entry.User;
import cn.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by ASUS on 2017/5/4.
 */
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Override
    public int insert(User user) {
        return userDao.insert(user);
    }

    @Override
    public int insertSelective(User user) {
        return userDao.insertSelective(user);
    }

    @Override
    public int insertList(List<User> users) {
        return userDao.insertList(users);
    }

    @Override
    public int update(User user) {
        return userDao.update(user);
    }

    @Override
    public List<User> findByEmailAndPassword(String email, String password) {
        return userDao.findByEmailAndPassword(email,password);
    }

    /**
     * 主要用于检查email的重复
     * @param email
     * @return
     */
    @Override
    public List<String> findEmailByEmail(String email) {
        return userDao.findEmailByEmail(email);
    }
}
