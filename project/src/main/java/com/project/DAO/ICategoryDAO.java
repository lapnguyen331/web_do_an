package com.project.dao;

import com.project.models.Category;

public interface ICategoryDAO extends IDAO<Category> {
    Category findOneById(int id);
}
