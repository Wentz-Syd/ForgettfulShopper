package org.Server.dao;

import org.Server.model.RegisterUserDto;
import org.Server.model.User;
import org.springframework.stereotype.Component;

@Component
public class JdbcUserDao implements UserDao{
    @Override
    public User createUser(RegisterUserDto user) {
        return null;
    }

    @Override
    public User getUserByUsername(String username) {
        return null;
    }
}
