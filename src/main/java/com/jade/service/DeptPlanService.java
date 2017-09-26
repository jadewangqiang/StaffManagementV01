package com.jade.service;
import java.util.List;

import com.jade.pojo.DeptPlan;
public interface DeptPlanService {
	public List<DeptPlan> getPlanByHandler(List<Integer> handlers);
}
