package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IBlogDAO;
import com.project.mappers.BlogRowMapper;
import com.project.mappers.ImageRowMapper;
import com.project.models.Blog;
import com.project.models.Image;
import org.jdbi.v3.core.Handle;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

public class BlogDAO extends AbstractDAO<Blog> implements IBlogDAO {
    public BlogDAO(Handle handle) {
        super(handle);
    }

    @Override
    public List<Blog> selectAll() {
        final String SELECT_ALL = "SELECT * FROM <table1> b JOIN <table2> i ON <col1> = <col2>";
        var result = query(SELECT_ALL, Blog.class, q -> {
            q.define("table1", "blogs");
            q.define("table2", "images");
            q.define("col1", "b.thumbnail");
            q.define("col2", "i.id");
        }, new BlogRowMapper("b"), new ImageRowMapper("i"));
        return result;
    }

    @Override
    public Blog getBlogById(int id) {
        final String SELECT = "SELECT * FROM <table1> b LEFT JOIN <table2> i ON <col1> = <col2> WHERE <col3> = <para>";
        var result = query(SELECT, Blog.class, q -> {
            q.define("table1", "blogs");
            q.define("table2", "images");
            q.define("col1", "b.thumbnail");
            q.define("col2", "i.id");
            q.define("col3", "b.id");
            q.define("para", id);
        }, new BlogRowMapper("b"), new ImageRowMapper("i"));
        if (result.isEmpty()) return null;
        return result.get(0);
    }

    @Override
    public int insert(Blog blog) throws Exception {
        var values = Arrays.asList(
                blog.getAuthor() == null ? null : blog.getAuthor().getId(),
                blog.getTitle(),
                blog.isStatus(),
                blog.getDescription(),
                blog.getPath(),
                blog.getThumbnail() == null ? null : blog.getThumbnail().getId(),
                blog.getCreateAt() == null ? LocalDateTime.now() : blog.getCreateAt(),
                blog.getUpdateAt() == null ? LocalDateTime.now() : blog.getUpdateAt()
        );
        final String INSERT = "INSERT INTO <table> (<columns>) VALUES (<values>)";
        return insertAndReturnGeneratedKeys(INSERT, "id", (update -> {
            update.define("table", "blogs")
                .defineList("columns", "userId", "title", "status", "description", "path", "thumbnail", "createAt", "updateAt")
                .bindList("values", values);
        })).mapTo(int.class).one();
    }

    public static void main(String[] args) {

    }
}
