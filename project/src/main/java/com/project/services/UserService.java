package com.project.services;

import com.project.dao.IUserDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.dao.implement.UserDAO;
import com.project.db.JDBIConnector;
import com.project.models.User;
import org.jdbi.v3.core.Handle;

import java.security.NoSuchAlgorithmException;
import java.util.List;

public class UserService extends AbstractService {
    private final IUserDAO userDAO;
    public UserService() {
        super();
        this.userDAO = FactoryDAO.getDAO(super.handle, FactoryDAO.DAO_USER);
    }

    public UserService(Handle handle) {
        super(handle);
        this.userDAO = FactoryDAO.getDAO(super.handle, FactoryDAO.DAO_USER);
    }

    public List<User> getAll() {
        return userDAO.getAll();
    }

    public User getUserByName(String username) {
        return userDAO.getLoginInfo(username);
    }
    //lấy thông tin user + avartar bằng id
    public User getInforById(int id){
        return userDAO.getInforUserById(id);
    }
    public int changePass(int id,String username,String password){
        return userDAO.updateAccount(id,username,password);
    }
    public static void main(String[] args) {
        var service = new UserService();
//        System.out.println(service.getUserByName("root"));
//        System.out.println(service.getInforById(3));
        try {
            String em = User.hashPassword("conga");
            System.out.println(em);
            System.out.println(service.changePass(3,"lapusername",em));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }

    }
}
