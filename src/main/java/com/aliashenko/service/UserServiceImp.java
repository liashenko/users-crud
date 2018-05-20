package com.aliashenko.service;

import com.aliashenko.dao.UserDao;
import com.aliashenko.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class UserServiceImp implements UserService {

    private final UserDao UserDao;

    @Autowired
    public UserServiceImp(UserDao UserDao) {
        this.UserDao = UserDao;
    }

    @Transactional
    @Override
    public long save(User user) {
        return UserDao.save(user);
    }

    @Override
    public User get(long id) {
        return UserDao.get(id);
    }

    @Override
    public List<User> list() {
        return UserDao.list();
    }

    @Transactional
    @Override
    public void update(long id, User user) {
        UserDao.update(id, user);
    }

    @Transactional
    @Override
    public void delete(long id) {
        UserDao.delete(id);
    }

}