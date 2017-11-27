package cn.tedu.pm.controller;

import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import cn.tedu.pm.utils.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller

public class LoginController {
    @Autowired
    private UserService userService;
    @RequestMapping("login")
    public String login(String FName, String FPassword, Model model, HttpSession session){


        if (StringUtils.isEmpty(FName)||StringUtils.isEmpty(FName)) {

            model.addAttribute("errorInfo","用户名或密码不能为空！");
            return "/sysadmin/login/login";
        }

        FPassword = Md5Utils.getMd5(FPassword, FName);

        User user = userService.login(FName,FPassword);

        if (user==null) {
            model.addAttribute("errorInfo","用户名或密码不正确！");
            return "/sysadmin/login/login";
        }
        //把登录成功的用户信息 保存到session域中
        session.setAttribute("_CURRENT_USER", user);

        //登录成功跳转到首页
        return "redirect:/home";
    }
    @RequestMapping("/tocreate")
    public String tocreate(){

        return "register";
    }
}
