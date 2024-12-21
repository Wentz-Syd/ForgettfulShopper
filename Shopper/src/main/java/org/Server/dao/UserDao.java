package org.Server.dao;

import org.Server.model.RegisterUserDto;
import org.Server.model.User;

import java.util.List;


public interface UserDao {

    List<User> getUsers();

    User getUserById(int userId);

    User createUser(RegisterUserDto user);

    User getUserByUsername(String username);
}
