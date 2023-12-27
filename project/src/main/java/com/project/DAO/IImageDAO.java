package com.project.dao;

import com.project.models.Image;
import com.project.models.Product;

import java.sql.SQLException;
import java.util.List;

public interface IImageDAO extends GenericDAO<Image>{
    List<Image> selectAll();
    Image selectById(int id);
    List<Image> selectGallery(Product p);
    int insert(Image image) throws Exception;
    int insertToGalleryOf(Product p, Image image) throws Exception;
}
