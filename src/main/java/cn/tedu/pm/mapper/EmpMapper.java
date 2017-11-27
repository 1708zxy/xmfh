package cn.tedu.pm.mapper;

import cn.tedu.pm.pojo.Emp;

import java.util.List;

public interface EmpMapper {

    public List<Emp> findAll();

    public void add(Emp emp);
}
