package cn.tedu.pm.mapper;

import cn.tedu.pm.pojo.Dept;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DeptMapper {
    @Select("SELECT * FROM tbl_department")
    List<Dept> findAll();
}
