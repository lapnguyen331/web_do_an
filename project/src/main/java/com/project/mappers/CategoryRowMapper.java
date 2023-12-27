package com.project.mappers;

import com.project.models.Blog;
import com.project.models.Category;
import com.project.models.Image;
import org.jdbi.v3.core.config.ConfigRegistry;
import org.jdbi.v3.core.mapper.RowMapper;
import org.jdbi.v3.core.statement.StatementContext;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

public class CategoryRowMapper extends ARowMapper<Category> {
    public CategoryRowMapper(String alias) {
        super(alias);
    }

    public CategoryRowMapper() {
    }

    @Override
    public Category map(ResultSet rs, StatementContext ctx) {
        Category category;
        try {
            int id = rs.getInt(this.alias+"id");
            String name = rs.getString(this.alias+"name");
            Image thumbnail = ctx.findRowMapperFor(Image.class).get().map(rs, ctx);
            boolean status = rs.getBoolean(this.alias+"status");
            Blog blog = ctx.findRowMapperFor(Blog.class).get().map(rs, ctx);
            LocalDateTime createAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, "createAt", ctx);
            LocalDateTime updateAt = ctx.findColumnMapperFor(LocalDateTime.class).get().map(rs, "updateAt", ctx);
            category = new Category(id, name, thumbnail, status, blog, createAt, updateAt);
        } catch (SQLException e) {
            e.printStackTrace();
            category = null;
        }
        return category;
    }
}
