package com.jade.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jade.pojo.DeptSkillReq;

public interface DeptSkillReqMapper {
    int insert(DeptSkillReq record);

    int insertSelective(DeptSkillReq record);
    
    List<DeptSkillReq> selectByDept(@Param(value="provId") String prov_id,@Param(value="deptId")String dept_id,@Param(value="funId")String fun_id);
}