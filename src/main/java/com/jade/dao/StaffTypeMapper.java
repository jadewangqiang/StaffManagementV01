package com.jade.dao;

import com.jade.pojo.StaffType;

public interface StaffTypeMapper {
    int insert(StaffType record);

    int insertSelective(StaffType record);

    StaffType selectTypeByValue(int staff_value);
}