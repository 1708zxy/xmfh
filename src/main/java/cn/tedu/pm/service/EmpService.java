package cn.tedu.pm.service;

import cn.tedu.pm.pojo.Emp;

import java.util.List;

public interface EmpService {

    public List<Emp> findAll();

    public void add(Emp emp);
}
