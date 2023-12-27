package com.project.dao;

import java.util.List;

public interface IDAO<T> {
    List<T> selectAll();
    int insert(T t);
    boolean update(T t);
}
