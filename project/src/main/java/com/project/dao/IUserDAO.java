package com.project.dao;

import com.project.models.User;
import org.json.JSONObject;

import java.util.List;

public interface IUserDAO {
    List<User> getAll();
    User getLoginInfo(String username);
    int insert(User user);
}
