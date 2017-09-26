package com.jade.service;
import java.util.List;

import com.jade.pojo.SkillPromotion;
public interface SkillPromService {
    public List<SkillPromotion> selectPromHis(int staff_id);   
    public List<SkillPromotion> selectAllApplication(int staff_id);
}
