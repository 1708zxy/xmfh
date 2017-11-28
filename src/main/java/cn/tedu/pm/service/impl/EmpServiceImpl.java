package cn.tedu.pm.service.impl;

import cn.tedu.pm.mapper.EmpMapper;
import cn.tedu.pm.pojo.Emp;
import cn.tedu.pm.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class EmpServiceImpl implements EmpService{
    @Autowired
    private EmpMapper empMapper;
    public List<Emp> findAll() {
        return empMapper.findAll();
    }

    public void add(Emp emp) {
        emp.setFEntryDate(new Date());
        empMapper.add(emp);
    }
}
