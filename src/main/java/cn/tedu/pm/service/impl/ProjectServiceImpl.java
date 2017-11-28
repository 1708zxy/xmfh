package cn.tedu.pm.service.impl;

import cn.tedu.pm.mapper.ProjectMapper;
import cn.tedu.pm.pojo.Project;
import cn.tedu.pm.service.ProjectService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class ProjectServiceImpl implements ProjectService{
    @Autowired
    private ProjectMapper projectMapper;


    public Project findOne(String FName) {
        return projectMapper.findOne(FName);
    }

    public Project find(String FNumber) {
        return projectMapper.find(FNumber);
    }

    public Project findServlet(String FName, String FPM, String FStatus) {
        return projectMapper.findServlet(FName,FPM,FStatus);
    }

    public List<Project> findMyAll(Integer userId) {
        return projectMapper.findMyAll(userId);
    }

    public void tosave(Project project) {

        projectMapper.tosave(project);
    }

    public List<Integer> selectStatusC(Integer userId) {
        return projectMapper.selectStatusC(userId);
    }
}
