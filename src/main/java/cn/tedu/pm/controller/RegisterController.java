package cn.tedu.pm.controller;


import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
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
        return "registfinsh";
    }

    /**
     * 根据用户名查询用户是否存在 验证用户名是否存在
     * @param name
     * @return
     */
    @ResponseBody
    @RequestMapping("/selectByName")
    public String selectByName(String name) {
        User user = userService.findOneByUsername(name);
        if(user==null){
            return "1";
        }else{
            return "0";
        }
    }
}
