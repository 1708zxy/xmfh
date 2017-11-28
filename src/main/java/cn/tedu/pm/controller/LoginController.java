package cn.tedu.pm.controller;

import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import cn.tedu.pm.utils.Md5Utils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/loginController")
public class LoginController {
    @Autowired
    private UserService userService;


    @RequestMapping("/tologin")
    public String tologin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(String FName, String FPassword, Model model, HttpSession session){
        //代表当前用户
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(FName, FPassword);
        try {
            subject.login(token);
            //得到登录成功的user
            User user = (User) subject.getPrincipal();
            session.setAttribute("_CURRENT_USER", user);
            return "redirect:/projectController/findAll";
        } catch (AuthenticationException e) {
            e.printStackTrace();

            model.addAttribute("errorInfo","用户名或密码不正确！");
            return "/login";
        }
    }

    //退出登录
    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("_CURRENT_USER");

//		通知shiro框架 退出登录
        Subject subject = SecurityUtils.getSubject();

        //判断是否是登录状态 如果是则退出
        if (subject.isAuthenticated()) {
            subject.logout();
        }

        return "redirect:/loginController/tologin";

    }

}
