package com.jade.dao;

import com.jade.pojo.DeptInfo;

public interface DeptInfoMapper {
    int insert(DeptInfo record);

    int insertSelective(DeptInfo record);
    
    DeptInfo selectDPNameById(String dept_id);
}