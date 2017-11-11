package com.gwj.jnshu.dao;


import com.gwj.jnshu.entities.User;

public interface UserDao {
    int addUser(User user);//注册
    User login(User user);//登录
}
