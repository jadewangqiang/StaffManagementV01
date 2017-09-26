package com.jade.dao;

import java.util.List;

import com.jade.pojo.DeptPlan;

public interface DeptPlanMapper {
    int insert(DeptPlan record);

    int insertSelective(DeptPlan record);
    
    List<DeptPlan> selectByHandler(List<Integer> handlers);
}