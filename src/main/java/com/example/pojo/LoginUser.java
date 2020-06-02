package com.example.pojo;

public class LoginUser {


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
     private  String roles;
    private String username;
    private  Integer id;
    public String getRoles() {
        return roles;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public void setRoles(String roles) {
        this.roles = roles;
    }

    private String password;

}
