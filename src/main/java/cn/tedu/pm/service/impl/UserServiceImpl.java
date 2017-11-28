package cn.tedu.pm.service.impl;

import cn.tedu.pm.mapper.UserMapper;
import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import cn.tedu.pm.utils.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service
public class UserServiceImpl implements UserService  {

    @Autowired
    private UserMapper userMapper;



    public User login(String FName, String FPassword) {
        return userMapper.login(FName,FPassword);
    }
    public List<User> findAll() {
        return userMapper.findAll();
    }

    public void save(User user) {

        user.setFPassword(Md5Utils.getMd5(user.getFPassword(), user.getFName()));

        Date date = new Date();
        System.out.println(date);
        user.setFCreateTime(date);

        userMapper.save(user);
    }

    public User findOneByUsername(String username) {
        return userMapper.findOneByUsername(username);
    }

    public List<String> findRoleNamesByUserId(Integer fUserID) {
        return null;
    }


}
