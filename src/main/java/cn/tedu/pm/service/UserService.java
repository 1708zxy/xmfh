package cn.tedu.pm.service;


import cn.tedu.pm.pojo.User;

import java.util.List;

public interface UserService {
    public User login(String FName, String FPassword);
    public List<User> findAll();
}
