package cn.tedu.pm.mapper;

import cn.tedu.pm.pojo.Project;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;
import java.util.Map;


@Repository
@Component
public interface ProjectMapper {
    @Select("select * from tbl_project where FName=#{FName}")
    public Project findOne(String FName);
    @Select("select * from tbl_project where FNumber=#{FNumber}")
    public Project find(String FNumber);

    public List<Project> findMyAll(@Param("userId")Integer userId);

    public Project findServlet(@Param("FName") String fName , @Param("FPM")String fPM,@Param("FStatus") String FStatus);

    public void tosave(Project project);

    public List<Integer> selectStatusC(@Param("userId")Integer userId);
}
