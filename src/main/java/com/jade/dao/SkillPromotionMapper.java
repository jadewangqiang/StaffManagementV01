package com.jade.dao;

import java.util.List;

import com.jade.pojo.SkillPromotion;

public interface SkillPromotionMapper {
    int deleteByPrimaryKey(Integer requestNo);

    int insert(SkillPromotion record);

    int insertSelective(SkillPromotion record);

    SkillPromotion selectByPrimaryKey(Integer requestNo);

    int updateByPrimaryKeySelective(SkillPromotion record);

    int updateByPrimaryKey(SkillPromotion record);
    
    List<SkillPromotion> selectPromHis(int staff_id);
    
    List<SkillPromotion> selectAllApplication(int staff_id);
}