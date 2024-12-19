package org.Server.security;

import org.Server.dao.UserDao;
import org.Server.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Service("userDetailsService")
public class UserModelDetailsService implements UserDetailsService {

    private final Logger log = LoggerFactory.getLogger(UserModelDetailsService.class);

    private final UserDao userDao;

    public UserModelDetailsService(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public UserDetails loadUserByUsername(final String login) {
        log.debug("Authenticating user '{}'", login);
        User user = userDao.getUserByUsername(login);
        if (user == null) {
            throw new UsernameNotFoundException("User not found.");
        }
        return createSpringSecurityUser(login, user);
    }

    private org.springframework.security.core.userdetails.User createSpringSecurityUser(String login, User user) {
        return new org.springframework.security.core.userdetails.User(
                user.getUsername(),
                user.getPassword(), // Assuming password is already hashed
                Collections.singletonList(new SimpleGrantedAuthority("USER")) // Single authority level
        );
    }
}
