package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IUserDAO;
import com.project.mappers.ImageRowMapper;
import com.project.mappers.UserRowMapper;
import com.project.models.Image;
import com.project.models.User;
import org.jdbi.v3.core.Handle;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

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

    @Override
    public int insert(User user) {
        var keys = Arrays.asList(
                "username",
                "password",
                "avatar",
                "levelAccess",
                "firstName",
                "lastName",
                "gender",
                "address",
                "phone",
                "birth",
                "status",
                "email",
                "verified",
                "createAt",
                "updateAt"
        );
        var values = Arrays.asList(
                user.getUsername(),
                user.getPassword(),
                Optional.ofNullable(user.getAvatar()).map(Image::getId).orElse(1042),
                user.getLevelAccess(),
                user.getFirstName(),
                user.getLastName(),
                user.isGender(),
                user.getAddress(),
                user.getPhone(),
                user.getBirthDate(),
                user.getStatus(),
                user.getEmail(),
                user.isVerified(),
                Optional.ofNullable(user.getCreateAt()).orElse(LocalDateTime.now()),
                Optional.ofNullable(user.getUpdateAt()).orElse(LocalDateTime.now())
        );
        final String INSERT = "INSERT INTO <table> (<columns>) VALUES (<values>)";
        return insertAndReturnGeneratedKeys(INSERT, "id", (update -> {
            update.define("table", "users")
                    .defineList("columns", keys)
                    .bindList("values", values);
        })).mapTo(int.class).findOne().orElse(-1);
    }
}
