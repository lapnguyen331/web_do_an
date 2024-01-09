package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IUserDAO;
import com.project.mappers.ImageRowMapper;
import com.project.mappers.UserRowMapper;
import com.project.models.User;
import org.jdbi.v3.core.Handle;
import org.json.JSONObject;

import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    public UserDAO(Handle handle) {
        super(handle);
    }

    @Override
    public List<User> selectAll() {
        String SELECT_ALL_USERS = "SELECT * FROM <table1> JOIN <table2> ON <x1> = <x2>";
        return query(SELECT_ALL_USERS, new UserRowMapper(), (query) -> {
            query.registerRowMapper(new ImageRowMapper());
            query.define("table1", "users")
                    .define("table2", "images")
                    .define("x1", "users.avatarId")
                    .define("x2", "images.id");
        });
    }

    @Override
    public boolean checkExist(int id, String username) {
        String CHECK_EXISTS = "SELECT id FROM <table> WHERE id = :id OR username = :username";
        return check(CHECK_EXISTS, (query) ->  {
            query.define("table", "users")
                    .bind("id", id)
                    .bind("username", username);
            return query.mapTo(Integer.class).findOne().isPresent();
        });
    }

    @Override
    public User getByUsername(String username) {
        return null;
    }
    public static void main(String[] args) {
    }
}
