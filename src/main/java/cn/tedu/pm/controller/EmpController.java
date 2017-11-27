package cn.tedu.pm.controller;

import cn.tedu.pm.pojo.Dept;
import cn.tedu.pm.pojo.Emp;
import cn.tedu.pm.service.DeptService;
import cn.tedu.pm.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class EmpController {
    @Autowired
    private EmpService empService;
    @Autowired
    private DeptService deptService;
    @RequestMapping("dept")
    public String dept(Model model){
        List<Emp> empList=empService.findAll();
        model.addAttribute("empList",empList);
        List<Dept> deptList=deptService.findAll();
        model.addAttribute("deptList",deptList);
        return "EmpAndDept/dept";
    }
    @RequestMapping("add")
    public String add(Emp emp){
        empService.add(emp);
        return "redirect:dept";
    }


}
