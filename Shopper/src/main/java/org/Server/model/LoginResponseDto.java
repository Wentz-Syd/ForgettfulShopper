package org.Server.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class LoginResponseDto {

    private String token;
    private User user;

    public LoginResponseDto(String token, User user) {
        this.token = token;
        this.user = user;
    }

    @JsonProperty
    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    @JsonProperty
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
