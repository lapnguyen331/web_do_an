package com.project.mappers;

import com.project.models.Blog;
import com.project.models.Image;
import org.jdbi.v3.core.statement.StatementContext;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class BlogRowMapper extends ARowMapper<Blog> {

    public BlogRowMapper(String alias) {
        super(alias);
    }

    @Override
    public Blog map(ResultSet rs, StatementContext ctx) throws SQLException {
        Blog blog;
        try {
            int id = rs.getInt(this.alias+"id");
            String title = rs.getString(this.alias+"title");
            boolean status = rs.getBoolean(this.alias+"status");
            String description = rs.getString(this.alias+"description");
            String path = rs.getString(this.alias+"path");
            Image thumbnail = ctx.findRowMapperFor(Image.class).get().map(rs, ctx);
            LocalDateTime createAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, this.alias+"createAt", ctx);
            LocalDateTime updateAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, this.alias+"updateAt", ctx);
            blog = new Blog(id, null, title, status, description, path, thumbnail, createAt, updateAt);
        } catch (SQLException e) {
            e.printStackTrace();
            blog = null;
        }
        return blog;
    }
}
