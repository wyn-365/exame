package com.example.service;

import com.example.pojo.LoginUser;
import com.example.pojo.TeacherInformation;

import java.util.List;

public interface AdminUserService {
    //登录验证
    public LoginUser findByUsername(String username);

    //根据id删除loginuser
    public void deleteLoginUser(Integer[] id);
   //返回所有管理员信息给前端页面
    public List<LoginUser> findAdminByroles();
    //返回所有教师信息给前端页面
    public List<TeacherInformation> findTeacherByroles();
    //增加或者修改各种用户
    public void addLoginUsersave(LoginUser loginUser);
//    //增加或者修改教师详细信息
     public void  addteachersave(TeacherInformation teacherInformation);

    //根据id返回用户对象
    public LoginUser findAdminById(Integer id);
    public TeacherInformation findTeacherById(Integer id);

    /*
      **教师用户方面
     */


}
