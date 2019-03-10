package com.example.finalproject.models;

public class UserDetails {
    int userId;
    String userName;
    String password;
    String email;

    public UserDetails() {
    }

    public UserDetails(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }

    public UserDetails(String userName, String password, String email) {
        this.userName = userName;
        this.password = password;
        this.email = email;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
