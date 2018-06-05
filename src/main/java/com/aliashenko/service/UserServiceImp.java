package com.aliashenko.service;

import com.aliashenko.dao.UserDao;
import com.aliashenko.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImp implements UserService {

    private final UserDao userDAO;

    @Autowired
    public UserServiceImp(UserDao userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    public long save(User user) {
        return userDAO.save(user);
    }

    @Override
    public User get(long id) {
        return userDAO.get(id);
    }

    @Override
    public List<User> list() {
        return userDAO.list();
    }

    @Override
    public void update(long id, User user) {
        userDAO.update(id, user);
    }

    @Override
    public void delete(long id) {
        userDAO.delete(id);
    }

}