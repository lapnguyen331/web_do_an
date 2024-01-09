package com.project.services;

import com.project.dao.implement.UserDAO;
import com.project.models.User;
import java.util.List;

public class UserService {
    private static UserService instance;
    private UserDAO dao;
    public UserService() {

    }

    public static UserService getInstance() {
        if (instance == null) instance = new UserService();
        return instance;
    }

    public List<User> getAll() {
        return dao.selectAll();
    }

    public User getByUsername(String username) {
        User user = null;
        user = dao.getByUsername(username);
        return user;
    }
}
