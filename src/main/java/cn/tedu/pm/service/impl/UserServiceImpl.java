package cn.tedu.pm.service.impl;

import cn.tedu.pm.mapper.UserMapper;
import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }
}
