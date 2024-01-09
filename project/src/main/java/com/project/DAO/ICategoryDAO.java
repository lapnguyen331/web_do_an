package com.project.dao;

import com.project.models.Category;

import java.util.List;

public interface ICategoryDAO {
    Category findOneById(int id);
    List<Category> getAll_fullDetails();
    List<Category> getAll_shortDetails();
}
