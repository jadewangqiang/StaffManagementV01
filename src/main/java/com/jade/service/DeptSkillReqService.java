package com.jade.service;
import java.util.List;

import com.jade.pojo.DeptSkillReq;
public interface DeptSkillReqService {
	public List<DeptSkillReq> getSkillReqByDept(String prov_id,String dept_id,String fun_id);
}
