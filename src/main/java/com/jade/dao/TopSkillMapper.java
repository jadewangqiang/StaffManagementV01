package com.jade.dao;

import com.jade.pojo.TopSkill;

public interface TopSkillMapper {
    int insert(TopSkill record);

    int insertSelective(TopSkill record);
}