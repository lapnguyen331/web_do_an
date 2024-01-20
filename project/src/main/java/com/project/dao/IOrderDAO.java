package com.project.dao;

import com.project.models.Order;

import java.util.List;

public interface IOrderDAO {
    List<Order> getAll();
    int insert(Order order);
    int update(Order order);
}
