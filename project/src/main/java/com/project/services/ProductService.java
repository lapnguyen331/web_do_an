package com.project.services;

import com.project.dao.IProductDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.models.Category;
import com.project.models.Product;
import org.jdbi.v3.core.Handle;

import java.util.List;

public class ProductService extends AbstractService {
    private final IProductDAO productDAO;

    public ProductService() {
        this.productDAO = FactoryDAO.getDAO(handle, FactoryDAO.DAO_PRODUCT);
    }

    public ProductService(Handle handle) {
        super(handle);
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
    public List<Product> getTopOf(Category c, int n) {
        return productDAO.selectTopProductsOf_shortDetails(c, n);
    }
    public Product getById(int id) {
        return productDAO.selectOne_fullDetails(id);
    }
    public Product getById_short(int id) {
        return productDAO.selectOne_shortDetails(id);
    }

    public List<String> getBrands() {
        return productDAO.selectAllBrands();
    }

    public List<Product> search(String name, int categoryId, String brand, String minPrice, String maxPrice) {
        return productDAO.searchProduct(name, categoryId, brand, minPrice, maxPrice);
    }
    public List<Product> getAllProductOffCate(Category c){
        return productDAO.selectALLProductsOfCate_shortDetails(c);
    }
    public static void main(String[] args) {
        var service = new ProductService();
//        service.search("sâm", 1, null, null, null).forEach(System.out::println);
//        System.out.println(service.getById_short(239));;
        service.getAllProductOffCate(new Category(1)).forEach(System.out::println);
    }
}
