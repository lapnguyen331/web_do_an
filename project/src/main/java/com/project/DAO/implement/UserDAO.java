package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IUserDAO;
import com.project.mappers.ImageRowMapper;
import com.project.mappers.UserRowMapper;
import com.project.models.User;
import org.jdbi.v3.core.Handle;

import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {
    public UserDAO(Handle handle) {
        super(handle);
    }

    @Override
    public List<User> getAll() {
        final String SELECT = "SELECT <columns> FROM <table1> u LEFT JOIN <table2> i" +
                " ON u.avatar = i.id";
        return query(SELECT, User.class, (query -> {
           query.define("columns", "u.*, i.path")
                   .define("table1", "users")
                   .define("table2", "images");
        }), new UserRowMapper("u"), new ImageRowMapper("i"));
    }

    @Override
    public User getLoginInfo(String username) {
        final String SELECT = "SELECT <columns> FROM <table1> u LEFT JOIN <table2> i" +
                " ON u.avatar = i.id" +
                " WHERE u.username = :username";
        var rs = query(SELECT, User.class, (query -> {
            query.define("columns", "u.id, u.username, u.password, i.path")
                    .define("table1", "users")
                    .define("table2", "images")
                    .bind("username", username);
        }), new UserRowMapper("u"), new ImageRowMapper("i"));
        if (rs.isEmpty()) return null;
        return rs.get(0);
    }
}
