package cn.tedu.pm.controller;

import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/userController")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public String findAll(Model model){
        /*List<User> list = userService.findAll();
        model.addAttribute("list",list);*/
        return "login";

    }

}
