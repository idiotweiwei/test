package com.gwj.jnshu.service.impl;

import com.gwj.jnshu.dao.UserDao;
import com.gwj.jnshu.entities.User;
import com.gwj.jnshu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.login(user);
    }

}
