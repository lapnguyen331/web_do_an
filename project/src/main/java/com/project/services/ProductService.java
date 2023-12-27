package com.project.services;

import com.project.dao.implement.ImageDAO;
import com.project.dao.implement.ProductDAO;
import com.project.models.Image;
import com.project.models.Product;

import java.util.List;

public class ProductService {
    private static ProductService instance;
    private ProductDAO product_dao;
    private ImageDAO image_dao;

    public static ProductService getInstance() {
        if (instance == null) instance = new ProductService();
        return instance;
    }

    private ProductService() {

    }

    public List<Product> getAll() {
        return product_dao.selectAll_short_details();
    }

    public Product getById(int id) {
        return product_dao.findOne(id);
    }

    public List<Image> getGallery(Product p) {
        int id = p.getId();
        if (!product_dao.checkExists(id)) return null;
        return image_dao.selectGallery(p);
    }

    public static void main(String[] args) {
        var product = getInstance().getById(1);
        System.out.println(getInstance().getGallery(product));
    }
}
