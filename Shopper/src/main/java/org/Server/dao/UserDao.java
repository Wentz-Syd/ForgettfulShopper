package org.Server.dao;

import org.Server.model.RegisterUserDto;
import org.Server.model.User;
import org.springframework.stereotype.Component;


public interface UserDao {

    User createUser(RegisterUserDto user);

    User getUserByUsername(String username);
}
