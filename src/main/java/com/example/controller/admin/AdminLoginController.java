package com.example.controller.admin;

import com.example.pojo.LoginUser;
import com.example.service.AdminUserService;
import com.example.service.StuUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class AdminLoginController {

    //属性注入
    @Autowired
    private AdminUserService adminUserService;
    //属性注入
    @Autowired
    private StuUserService userService;

   //教师和管理员登录页面
    @RequestMapping("/alogin")
    public String tologin(){
        return "admin/adminLogin";
    }
   //使用教师用户登录后的页面
    @RequestMapping("/teaindex")
    public String teaindex(){
        return "teacher/teaindex";
    }
   //使用管理员用户登录的页面
    @RequestMapping("/adminindex")
    public String adminindex(){
        return "admin/adminindex";
    }

    @RequestMapping("/adminloginsubmit")
    public String login(String username, String password, Model model, HttpSession session) {
        /**
         * 使用Shiro编写认证操作
         */

        //判断用户名是否存在
        if(!userService.findReisterUsername(username)){
            model.addAttribute("msg", "用户名不存在");
            return "admin/adminLogin";
        }


        LoginUser user = adminUserService.findByUsername(username);
        if (!(user.getRoles().equals("teacher")||user.getRoles().equals("admin"))) {
//        if (!user.getRoles().equals("teacher")) {
            model.addAttribute("msg", "登录失败");
            return "admin/adminLogin";
        }
         //1.获取Subject
        Subject subject = SecurityUtils.getSubject();
        //进行Md5加密，第一个参数为密码，第二参数是以用户名为盐，第三个参数是加密的次数
        Md5Hash md5password = new Md5Hash(password, username, 5);
        System.out.println(md5password.toString());

        //2.封装用户数据
        UsernamePasswordToken token = new UsernamePasswordToken(username, md5password.toString());
        //3.执行登录方法
        try {
            subject.login(token);


            //登录成功
            //根据用户权限，跳转到对应的页面
            if(user.getRoles().equals("teacher")) {
                session.setAttribute("TeaUsername", username);
                return "redirect:/teaindex";
            }

            if(user.getRoles().equals("admin")) {
                return "redirect:/adminindex";
            }
            return "admin/adminLogin";
        } catch (UnknownAccountException e) {
            //e.printStackTrace();
            //登录失败:用户名不存在
            model.addAttribute("msg", "用户名不存在");
            return "admin/adminLogin";
        } catch (IncorrectCredentialsException e) {
            //e.printStackTrace();
            //登录失败:密码错误
            model.addAttribute("msg", "密码错误");
            return "admin/adminLogin";
        }
    }



}

