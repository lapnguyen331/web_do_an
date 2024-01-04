package com.project.services;

import com.project.dao.IImageDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.dao.implement.ImageDAO;
import com.project.helpers.PropertiesFileHelper;
import com.project.models.Image;

import java.io.*;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Calendar;
import java.util.List;
import java.util.Properties;

public class ImageService {
    private static ImageService instance;
    private IImageDAO imageDAO;
    private ImageService() {
        var handle = FactoryDAO.createConnection();
        this.imageDAO = FactoryDAO.getDAO(handle, FactoryDAO.DAO_IMAGE);
    }

    public static ImageService getInstance() {
        if (instance == null) instance = new ImageService();
        return instance;
    }


    Image findOneById(int id) {
        return imageDAO.selectById(id);
    }

    List<Image> findAll() {
        return imageDAO.selectAll();
    }

    public static void main(String[] args) {
        System.out.println(ImageService.getInstance().findOneById(1));
    }
}
