package com.jade.dao;

import java.util.List;

import com.jade.pojo.StaffSkillInfo;
import com.jade.pojo.StaffSkillInfoKey;

public interface StaffSkillInfoMapper {
    int deleteByPrimaryKey(StaffSkillInfoKey key);

    int insert(StaffSkillInfo record);

    int insertSelective(StaffSkillInfo record);

    StaffSkillInfo selectByPrimaryKey(StaffSkillInfoKey key);
    
    List<StaffSkillInfo> selectSkillsById(int staff_id);
    
    List<StaffSkillInfo> selectSkillNameById(int staff_id);

    int updateByPrimaryKeySelective(StaffSkillInfo record);

    int updateByPrimaryKey(StaffSkillInfo record);
}