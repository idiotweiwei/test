package com.gwj.jnshu.service;

import com.gwj.jnshu.entities.User;

public interface UserService {
    User login(User user);
    void addUser(User user);
}
