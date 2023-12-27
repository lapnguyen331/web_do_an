package com.project.dao.implement;

import com.project.dao.IBlogDAO;
import com.project.dao.IImageDAO;
import com.project.dao.IProductDAO;
import com.project.db.JDBIConnector;
import org.jdbi.v3.core.Handle;

public abstract class FactoryDAO {
    public static final Class<IProductDAO> DAO_PRODUCT = IProductDAO.class;
    public static final Class<IImageDAO> DAO_IMAGE = IImageDAO.class;
    public static final Class<IBlogDAO> DAO_BLOG = IBlogDAO.class;
    public static Handle createConnection() {
        return JDBIConnector.get().open();
    }
    public static <T> T getDAO(Handle handle, Class<?> clazz) {
        if (clazz == DAO_PRODUCT) return (T) new ProductDAO(handle);
        else if (clazz == DAO_IMAGE) return (T) new ImageDAO(handle);
        else if (clazz == DAO_BLOG) return (T) new BlogDAO(handle);
        return null;
    }
}
