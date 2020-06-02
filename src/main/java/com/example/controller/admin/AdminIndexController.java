package com.example.controller.admin;


import com.example.pojo.LoginUser;
import com.example.pojo.TeacherInformation;
import com.example.service.AdminUserService;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminIndexController {

    //属性注入
    @Autowired
    private AdminUserService adminUserService;
    //设计Map聚合存储需要给页面的对象数据
    private Map<String,Object> result = new HashMap<String,Object>();

    //管理员管理页面
    @RequestMapping("/tomanageadmin")
    public String Manageadmin(){
        return "admin/manageadmin";
    }



    //管理员管理教师用户页面
    @RequestMapping("/tomanageteacher")
    public String tomanageadteacher(){
        return "admin/manageteacher";
    }
    //传输所有管理员用户信息
    @RequestMapping("/manageadmin")
    @ResponseBody  // 用于转换对象为json
    public List<LoginUser> adminlist(){
        List<LoginUser> list=adminUserService.findAdminByroles();
        return list;
    }
    //传输所有教师用户信息
    @RequestMapping("/manageadteacher")
    @ResponseBody  // 用于转换对象为json
    public List<TeacherInformation> teacherlist(){
        List<TeacherInformation> list=adminUserService.findTeacherByroles();
        return list;
    }


    /**
     * 删除LoginUser数据
     */
    @RequestMapping("/deleteLoginUser")
    @ResponseBody
    public Map<String,Object> delete(Integer[] id){
        try {
           adminUserService.deleteLoginUser(id);
            result.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", false);
            result.put("msg", e.getMessage());
        }
        return result;
    }
    /**
     * 根据id 查询对象
     */
    @RequestMapping("/adminfindById")
    @ResponseBody
    public LoginUser adminfindById(Integer id){
        LoginUser loginUser = adminUserService.findAdminById(id);
        return loginUser;
    }

    /**
     * 根据id 查询对象
     */
    @RequestMapping("/teacherfindById")
    @ResponseBody
    public TeacherInformation teacherfindById(Integer id){
        TeacherInformation teacherInformation=adminUserService.findTeacherById(id);
        return teacherInformation;
    }



//    /**
//     * 保存数据,包括新增管理员信息和修改管理员信息
//     */
    @RequestMapping("/saveAdmin")
    @ResponseBody
    public Map<String,Object> addAdmin(LoginUser loginUser){
        try {
            loginUser.setRoles("admin");
            System.out.println(loginUser.getPassword());
            Md5Hash md5=new Md5Hash(loginUser.getPassword(),loginUser.getUsername(),5);
            System.out.println(md5.toString());
            loginUser.setPassword(md5.toString());
            adminUserService.addLoginUsersave(loginUser);
            result.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", false);
            result.put("msg", e.getMessage());
        }
        return result;
    }
    //    /**
//     * 保存数据,包括新增管理员信息和修改管理员信息
//     */
    @RequestMapping("/saveteacher")
    @ResponseBody
    public Map<String,Object> addTeacher(TeacherInformation teacherInformation){
        try {

           // System.out.println(teacherInformation.getPassword());
            Md5Hash md5=new Md5Hash(teacherInformation.getPassword(),teacherInformation.getUsername(),5);
            System.out.println(teacherInformation.getId());
            //将教师详细信息在teacher_information进行增加或者修改
            adminUserService.addteachersave(teacherInformation);

            teacherInformation.setPassword(md5.toString());
            //增加或者修改教师用户
            if(teacherInformation.getId()==null) {
                LoginUser loginUser = new LoginUser();
                loginUser.setRoles("teacher");
                loginUser.setPassword(teacherInformation.getPassword());
                loginUser.setUsername(teacherInformation.getUsername());
                adminUserService.addLoginUsersave(loginUser);
            }
            else{
                LoginUser loginUser = new LoginUser();
                loginUser.setId(teacherInformation.getId());
                loginUser.setPassword(teacherInformation.getPassword());
                loginUser.setUsername(teacherInformation.getUsername());
                adminUserService.addLoginUsersave(loginUser);
            }
            result.put("success", true);
        } catch (Exception e) {
            e.printStackTrace();
            result.put("success", false);
            result.put("msg", e.getMessage());
        }
        return result;
    }

}
