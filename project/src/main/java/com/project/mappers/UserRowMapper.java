package com.project.mappers;

import com.project.models.Image;
import com.project.models.User;
import org.jdbi.v3.core.config.ConfigRegistry;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserRowMapper extends ARowMapper<User> {

    @Override
    public User map(ResultSet rs, StatementContext ctx) throws SQLException {
//        Image image = new ImageRowMapper().map(rs, ctx);
//        int id = this.getValueAt(rs, "users.id", ctx, Integer.class);
//        String username = this.getValueAt(rs, "users.username", ctx, String.class);
//        String password = this.getValueAt(rs, "users.password", ctx, String.class);
//        return new User(id, username, password, image);
        return null;
    }
}
