package cn.tedu.pm.service;


import cn.tedu.pm.pojo.User;

import java.util.List;

public interface UserService {
    public User login(String FName, String FPassword);
    public List<User> findAll();

    public void save(User user);

    User findOneByUsername(String username);

    List<String> findRoleNamesByUserId(Integer fUserID);
}
