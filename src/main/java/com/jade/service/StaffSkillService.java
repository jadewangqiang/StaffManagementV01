package com.jade.service;
import java.util.List;

import com.jade.pojo.StaffSkillInfo;
public interface StaffSkillService {
	public List<StaffSkillInfo> getSkillById(int staff_id);
	public List<StaffSkillInfo> getStSkNaById(int staff_id);
}
