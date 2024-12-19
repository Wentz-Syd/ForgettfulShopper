package org.Server.model;

import java.util.HashSet;
import java.util.Set;

public class User {

    private int id;
    private String username;
    private String password;
    private boolean activated;


    public User() {}

    public User(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;

        this.activated = true;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isActivated() {
        return activated;
    }

    public void setActivated(boolean activated) {
        this.activated = activated;
    }

}
