package com.jade.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jade.dao.DeptPlanMapper;
import com.jade.pojo.DeptPlan;
import com.jade.service.DeptPlanService;

@Service("deptPlanService")
public class DeptPlanServiceImpl implements DeptPlanService {
	
	@Resource
	private DeptPlanMapper deptPlanDao;

	@Override
	public List<DeptPlan> getPlanByHandler(List<Integer> handlers) {
		// TODO Auto-generated method stub
		return this.deptPlanDao.selectByHandler(handlers);
	}

}
