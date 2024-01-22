package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IUserDAO;
import com.project.mappers.ImageRowMapper;
import com.project.mappers.UserRowMapper;
import com.project.models.User;
import org.jdbi.v3.core.Handle;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
            query.define("columns", "u.id, u.username, u.password, i.path, u.levelAccess")
                    .define("table1", "users")
                    .define("table2", "images")
                    .bind("username", username);
        }), new UserRowMapper("u"), new ImageRowMapper("i"));
        if (rs.isEmpty()) return null;
        return rs.get(0);
    }

    @Override
    public User getInforUserById(int id) {
        final String SELECT = "SELECT <columns> FROM <table1> u LEFT JOIN <table2> i" +
                " ON u.avatar = i.id" +
                " WHERE u.id = :id";
        var rs = query(SELECT, User.class, (query -> {
            query.define("columns", "u.id, u.username, u.password, i.id,i.path,u.firstName,u.lastName,u.gender,u.address,u.phone,u.birth,u.status,u.email,u.verified")
                    .define("table1", "users")
                    .define("table2", "images")
                    .bind("id", id);
        }), new UserRowMapper("u"), new ImageRowMapper("i"));
        if (rs.isEmpty()) return null;
        return rs.get(0);
    }

    @Override
    public int updateAccount(int id,String username,String password ) {
        List<String> values = new ArrayList<>();
        values.add("username='"+username+"'");
        values.add("password='"+password+"'");
        final String UPDATE = "UPDATE <table> SET <values> WHERE id = <col1>";
        return update(UPDATE, (update ->  {
            update.define("table", "users")
                    .define("col1",id)
                    .define("values", String.join(", ", values));
        }));
    }

}
