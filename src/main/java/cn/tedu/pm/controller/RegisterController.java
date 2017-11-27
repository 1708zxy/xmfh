package cn.tedu.pm.controller;


import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/RegisterController")
public class RegisterController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/tocreate")
    public String tocreate(){

        return  "/register";
    }

    @RequestMapping("/save")
    public String save(User user){
        userService.save(user);
        return "/#";
    }


}
