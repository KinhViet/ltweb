package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import model.user;
import service.UserService;
import service.UserServiceImpl;

public class UserServiceImpl implements UserService {

    // Kết nối tới tầng DAO
    private UserDao userDao = new UserDaoImpl();

    @Override
    public user login(String username, String password) {
        // Gọi DAO để lấy User
        user user = userDao.findByUsernameAndPassword(username, password);
        return user; // Nếu null thì login fail, ngược lại login thành công
    }
}
