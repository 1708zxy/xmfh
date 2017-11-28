package cn.tedu.pm.service;

import cn.tedu.pm.pojo.Project;
import org.apache.ibatis.annotations.Param;


import java.util.Date;
import java.util.List;
import java.util.Map;

public interface ProjectService {
    public Project findOne(String FName);
    public Project find(String FNumber);
    public Project findServlet(String FName, String FPM, String FStatus);
   public List<Project> findMyAll(Integer userId);
    public void tosave(Project project);

    public List<Integer> selectStatusC(Integer userId);
}
