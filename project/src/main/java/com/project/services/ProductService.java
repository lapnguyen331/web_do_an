package com.project.services;

import com.project.dao.IProductDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.dao.implement.ImageDAO;
import com.project.dao.implement.ProductDAO;
import com.project.models.Category;
import com.project.models.Image;
import com.project.models.Product;

import java.util.List;

public class ProductService {
    private static ProductService instance;
    private IProductDAO productDAO;

    public static ProductService getInstance() {
        if (instance == null) instance = new ProductService();
        return instance;
    }

    private ProductService() {
        var handle = FactoryDAO.createConnection();
        this.productDAO = FactoryDAO.getDAO(handle, FactoryDAO.DAO_PRODUCT);
    }

    public List<Product> getAll() {
        return productDAO.selectAll_shortDetails();
    }

    public List<Product> getALlOf(Category c) {
        return productDAO.selectTop3ProductsOf_shortDetails(c);
    }
    public List<Product> getTop4() {
        return productDAO.selectTop4_shortDetails();
    }
    public static void main(String[] args) {
        var c = new Category(1);
        System.out.println(getInstance().productDAO.selectTop3ProductsOf_shortDetails(c));
    }
}
