package com.jade.serviceImpl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.jade.pojo.SkillPromotion;
import com.jade.service.SkillPromService;
import com.jade.dao.SkillPromotionMapper;

@Service("skillPromService")
public class SkillPromServiceImpl implements SkillPromService {

	@Resource 
	private  SkillPromotionMapper SkillPromotionDao;
	
	@Override
	public List<SkillPromotion> selectPromHis(int staff_id) {
		// TODO Auto-generated method stub
		return this.SkillPromotionDao.selectPromHis(staff_id);
	}

	@Override
	public List<SkillPromotion> selectAllApplication(int staff_id) {
		// TODO Auto-generated method stub
		return this.SkillPromotionDao.selectAllApplication(staff_id);
	}

}
