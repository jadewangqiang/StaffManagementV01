package com.jade.dao;

import java.util.List;

import com.jade.pojo.SubSkill;

public interface SubSkillMapper {
    int insert(SubSkill record);

    int insertSelective(SubSkill record);
    
    List<SubSkill> selectAllSubSK();
    List<SubSkill> selectSubSKAB0();
    List<SubSkill> selectSubSKAB1();
    List<SubSkill> selectSubSKDI0();
    List<SubSkill> selectSubSKDI1();
    List<SubSkill> selectSubSKSK0();
}