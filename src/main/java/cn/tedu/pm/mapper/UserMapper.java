package cn.tedu.pm.mapper;

import cn.tedu.pm.pojo.User;

import java.util.List;

public interface UserMapper {

    public List<User> findAll();

    public void save(User user);
}
