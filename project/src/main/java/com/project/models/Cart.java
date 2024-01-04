package com.project.models;

import com.project.services.ProductService;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer, CartItem> products;

    public Cart() {
        this.products = new HashMap<>();
    }

    public Map<Integer, CartItem> getProducts() {
        return products;
    }

    public void put(Product product) {
        int productKey = product.getId();
        if (products.containsKey(productKey)) {
            this.products.get(productKey).increase();
        }
        else {
            this.products.put(productKey, new CartItem(product, 1));
        }
    }

    public CartItem getItem(int id) {
        return this.products.get(id);
    }

    public void remove(Product product) {
        int productKey = product.getId();
        this.products.remove(productKey);
    }
}
