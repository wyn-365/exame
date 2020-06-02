package com.example.service;

import com.example.pojo.LoginUser;
import com.example.pojo.StuInformation;

public interface StuUserService {
    //登录验证
    public LoginUser findByUsername(String username);
    public boolean findReisterUsername(String username);
    //注册用户账号
    public boolean register(LoginUser user);
    //注册学生用户账号信息存储
    public boolean addStuInformation(StuInformation user);
    public boolean updatePassword(LoginUser user);
    //查询用户信息
    public StuInformation findInformationByUsername(String username);
    //修改用户信息
    public  boolean updateInformation(StuInformation user);
}
