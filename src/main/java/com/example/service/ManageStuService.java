package com.example.service;

import com.example.pojo.LoginUser;
import com.example.pojo.StuInformation;

import java.util.List;

public interface ManageStuService {
    //根据id返回学生用户对象
    public LoginUser findStudentById(Integer id);
    //返回所有学生用户信息给前端页面
    public List<StuInformation> findStudentByroles();
    //修改学生用户数据
    public void updateStuUser(LoginUser loginUser);
}
