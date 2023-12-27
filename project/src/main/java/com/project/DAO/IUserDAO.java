package com.project.dao;

import com.project.models.User;
import org.json.JSONObject;

import java.util.List;

public interface IUserDAO extends IDAO<User> {
    List<User> selectAll();
    boolean checkExist(int id, String username);
    User getByUsername(String username);
}
