package com.project.dao;

import com.project.models.User;
import org.json.JSONObject;

import java.util.List;

public interface IUserDAO {
    public List<User> getAll();
    public User getLoginInfo(String username);
    User getInforUserById(int id);
    int updateAccount(int id,String username,String password );
}
