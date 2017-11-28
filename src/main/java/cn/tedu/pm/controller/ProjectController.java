package cn.tedu.pm.controller;

import cn.tedu.pm.pojo.Emp;
import cn.tedu.pm.pojo.Project;
import cn.tedu.pm.pojo.User;
import cn.tedu.pm.service.EmpService;
import cn.tedu.pm.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/projectController")
public class ProjectController extends BaseController{
    @Autowired
    private ProjectService projectService;

    @Autowired
    private EmpService empService;


    @RequestMapping("/findAll")
    public String findAll(HttpSession session,Model model){
        User user = (User) session.getAttribute("_CURRENT_USER");
        List<Project> project = projectService.findMyAll(user.getFUserID());
        List<Integer> list = projectService.selectStatusC(user.getFUserID());
        Object[] a = list.toArray();

        List<Emp> emp = empService.findAll();

        model.addAttribute("emplist",emp);
        model.addAttribute("status",a);
        model.addAttribute("pList",project);
        model.addAttribute("type","1");
        return "project/pList";
    }

   @RequestMapping("/findByName")
    public String findOne(String FName, Model model){
        System.out.println(FName);
        Project project = projectService.findOne(FName);
        System.out.println(project);
        model.addAttribute("pList",project);
        return "project/pList";
    }

    @RequestMapping("/findByNum")

    public String find( String FNumber, Model model){
        Project project = projectService.find(FNumber);
        System.out.println(project);
        model.addAttribute("p",project);
        return "project/pToView";
    }
    @RequestMapping("/findServlet")
    public String findServlet(@RequestParam(value = "FName" ,required=false) String FName, @RequestParam(value = "FPM",required=false)String FPM , @RequestParam(value = "FStatus",required=false)String FStatus, Model model){
    System.out.println(FName+","+FPM+",");
    if("".equals(FPM)){
            FPM=null;
        }
            if("".equals(FStatus)){
                FStatus=null;
            }
            if("".equals(FName)){
            FName=null;
        }
    Project project = projectService.findServlet(FName,FPM,FStatus);

    model.addAttribute("p",project);
    System.out.println(project);
        return  ("project/pToView");
    }


    @RequestMapping("/tosave")
    public String addUser(@RequestParam(value="FNumber",required = false) String FNumber, @RequestParam(value = "FName" ,required=false) String FName,  @RequestParam(value = "FPM" ,required=false) String FPM, @RequestParam(value = "FStatus",required=false)String FStatus, @RequestParam(value = "FDescribe",required=false)String FDescribe, @RequestParam(value = "FCreateTime",required=false)String FCreateTime, @RequestParam(value = "FCreateUser" ,required=false) String FCreateUser, Model model) throws ParseException {
//       Project project = new Project();
//       project.setFCreateTime(new SimpleDateFormat("yyyy-MM-dd").parse(FCreateTime));
//       project.setFName(FName);
//       project.setFPM(FPM);
//       project.setFCreateUser(FCreateUser);
//       project.setFDescribe(FDescribe);
//       project.setFNumber(FNumber);
//       project.setFStatus(Integer.parseInt(FStatus));
//
//         projectService.tosave(project);

//        return "redirect:/projectController/findAll";
        return "";
    }

}
