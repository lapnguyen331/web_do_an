package com.project.dao;

import com.project.models.Product;

import java.util.List;

public interface IProductDAO {
    boolean checkExists(int id);
    Product findOne(int id);
    List<Product> selectAll_full_details();
    List<Product> selectAll_short_details();
    int insert(Product p) throws Exception;
}
