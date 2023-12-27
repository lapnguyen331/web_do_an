package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.ICategoryDAO;
import com.project.mappers.BlogRowMapper;
import com.project.mappers.CategoryRowMapper;
import com.project.mappers.ImageRowMapper;
import com.project.models.Category;
import org.jdbi.v3.core.Handle;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO {

    public CategoryDAO(Handle handle) {
        super(handle);
    }

    @Override
    public List<Category> selectAll() {
        final String SELECT_ALL_CATEGORIES = "SELECT * FROM <table1> c" +
                " LEFT JOIN <table2> t ON <col1> = <col2>" +
                " LEFT JOIN <table3> b ON <col3> = <col4>";
        return query(SELECT_ALL_CATEGORIES, Category.class, (query) -> {
            query.define("table1", "categories")
                    .define("table2", "images")
                    .define("table3", "blogs")
                    .define("col1", "c.thumbnail")
                    .define("col2", "t.id")
                    .define("col3", "c.blogId")
                    .define("col4", "b.id");
        }, new CategoryRowMapper("c"), new ImageRowMapper("t"), new BlogRowMapper("b"));
    }

    @Override
    public int insert(Category category) {
        return 0;
    }

    @Override
    public boolean update(Category category) {
        return false;
    }

    @Override
    public Category findOneById(int id) {
        final String SELECT_ONE = "SELECT * FROM <table1> c" +
                " LEFT JOIN <table2> t ON <col1> = <col2>" +
                " LEFT JOIN <table3> b ON <col3> = <col4>" +
                " WHERE <col5> = <para>";
        var result = query(SELECT_ONE, Category.class, (query) -> {
            query.define("table1", "categories")
                    .define("table2", "images")
                    .define("table3", "blogs")
                    .define("col1", "c.thumbnail")
                    .define("col2", "t.id")
                    .define("col3", "c.blogId")
                    .define("col4", "b.id")
                    .define("col5", "c.id")
                    .define("para", id);
        }, new CategoryRowMapper("c"), new ImageRowMapper("t"), new BlogRowMapper("b"));
        if (result.isEmpty()) return null;
        return result.get(0);
    }

    public static void main(String[] args) {

    }
}