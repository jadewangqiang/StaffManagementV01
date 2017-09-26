package com.jade.serviceImpl;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

import com.jade.pojo.SubSkill;
import com.jade.service.SubSkillService;
import com.jade.dao.SubSkillMapper;

@Service("SubSkillService")
public class SubSkillServiceImpl implements SubSkillService {

	@Resource
	private SubSkillMapper subSkillDao;
	@Override
	public List<SubSkill> getAllSubSK() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectAllSubSK();
	}
	@Override
	public List<SubSkill> getAB0Skill() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectSubSKAB0();
	}
	@Override
	public List<SubSkill> getAB1Skill() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectSubSKAB1();
	}
	@Override
	public List<SubSkill> getDI0Skill() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectSubSKDI0();
	}
	@Override
	public List<SubSkill> getDI1Skill() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectSubSKDI1();
	}
	@Override
	public List<SubSkill> getSK0Skill() {
		// TODO Auto-generated method stub
		return this.subSkillDao.selectSubSKSK0();
	}
}