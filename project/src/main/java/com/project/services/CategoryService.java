package com.project.services;

import com.project.dao.ICategoryDAO;
import com.project.dao.implement.CategoryDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.models.Category;
import org.jdbi.v3.core.Handle;

import java.util.List;

public class CategoryService {
    private static CategoryService instance;
    private Handle con;
    private ICategoryDAO dao;

    private CategoryService() {
        this.con = FactoryDAO.createConnection();
        this.dao = FactoryDAO.getDAO(con, FactoryDAO.DAO_CATEGORY);
    }

    public static CategoryService getInstance() {
        if (instance == null) return new CategoryService();
        return instance;
    }

    public synchronized List<Category> getAll() {
        return dao.selectAll();
    }

    public static void main(String[] args) {
        System.out.println(getInstance().dao.selectAll());
    }
}
