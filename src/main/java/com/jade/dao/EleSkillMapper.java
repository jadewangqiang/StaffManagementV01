package com.jade.dao;

import com.jade.pojo.EleSkill;

public interface EleSkillMapper {
    int insert(EleSkill record);

    int insertSelective(EleSkill record);
}