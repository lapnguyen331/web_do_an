package com.project.services;

import com.project.dao.implement.ImageDAO;
import com.project.models.Image;

import java.util.List;

public class ImageService {
    private static ImageService instance;
    private ImageDAO dao;
    private ImageService() {

    }

    public static ImageService getInstance() {
        if (instance == null) instance = new ImageService();
        return instance;
    }

    Image findOneById(int id) {
        return dao.selectById(id);
    }

    List<Image> findAll() {
        return dao.selectAll();
    }

    public static void main(String[] args) {
        System.out.println(ImageService.getInstance().findOneById(1));
    }
}
