package com.jade.serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import java.util.List;

import com.jade.pojo.StaffSkillInfo;
import com.jade.service.StaffSkillService;
import com.jade.dao.StaffSkillInfoMapper;

@Service("staffSkillService")
public class StaffSkillServiceImpl implements StaffSkillService {

	@Resource
	private StaffSkillInfoMapper staffSkillInfoDao;
	@Override
	public List<StaffSkillInfo> getSkillById(int staff_id) {
		// TODO Auto-generated method stub
		return this.staffSkillInfoDao.selectSkillsById(staff_id);
	}

	public List<StaffSkillInfo>getStSkNaById(int staff_id){
		return this.staffSkillInfoDao.selectSkillNameById(staff_id);
	}
}
