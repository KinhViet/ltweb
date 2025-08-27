package home.service;
import model.user;

public interface UserService {

    user login(String username, String password);
    user get(String username);
}