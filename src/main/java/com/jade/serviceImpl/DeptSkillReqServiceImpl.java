package com.jade.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jade.pojo.DeptSkillReq;
import com.jade.service.DeptSkillReqService;
import com.jade.dao.DeptSkillReqMapper;

@Service("deptSkillReqService")
public class DeptSkillReqServiceImpl implements DeptSkillReqService {
	@Resource
	private DeptSkillReqMapper deptSkillReqDao;
	@Override
	public List<DeptSkillReq> getSkillReqByDept(String prov_id, String dept_id, String fun_id) {
		// TODO Auto-generated method stub
		return this.deptSkillReqDao.selectByDept(prov_id, dept_id, fun_id);
	}
}
