package cn.tedu.pm.mapper;

import cn.tedu.pm.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    public User login(@Param("FName")String username, @Param("FPassword")String password);
    public List<User> findAll();
    public void save(User user);

}
