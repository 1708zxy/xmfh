package cn.tedu.pm.service.impl;

import cn.tedu.pm.mapper.DeptMapper;
import cn.tedu.pm.pojo.Dept;
import cn.tedu.pm.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeptServiceImpl implements DeptService{
    @Autowired
    private DeptMapper deptMapper;
    public List<Dept> findAll() {
        return deptMapper.findAll();
    }
}
