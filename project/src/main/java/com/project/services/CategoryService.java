package com.project.services;

import com.project.dao.implement.CategoryDAO;
import com.project.models.Category;

import java.util.List;

public class CategoryService {
    private CategoryDAO dao;
    private static CategoryService instance;

    private CategoryService() {

    }

    public static CategoryService getInstance() {
        if (instance == null) return new CategoryService();
        return instance;
    }

    public List<Category> getAll() {
        return dao.selectAll();
    }

    public static void main(String[] args) {
        System.out.println(getInstance().dao.selectAll());
    }
}
