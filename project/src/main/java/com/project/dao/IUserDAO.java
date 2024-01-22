package com.project.dao;

import com.project.models.User;
import org.json.JSONObject;

import java.util.List;

public interface IUserDAO {
    List<User> getAll();
    User getLoginInfo(String username);
    User getInforUserById(int id);
    int insert(User user);
    int updateAccount(int id,String username,String password );
}
