package com.project.dao;

import com.project.models.Category;
import com.project.models.Product;

import java.util.List;

public interface IProductDAO {
    boolean checkExists(int id);
    Product findOne(int id);
    List<Product> selectAll_fullDetails();
    List<Product> selectAll_shortDetails();
    List<Product> selectTop4_shortDetails();
    List<Product> selectTop3ProductsOf_shortDetails(Category category);
    int insert(Product p) throws Exception;
}
