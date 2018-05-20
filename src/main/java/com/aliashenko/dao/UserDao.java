package com.aliashenko.dao;

import com.aliashenko.model.User;

import java.util.List;

public interface UserDao {
    long save(User user);

    User get(long id);

    List<User> list();

    void update(long id, User user);

    void delete(long id);
}