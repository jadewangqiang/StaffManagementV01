package com.jade.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jade.pojo.StaffInfo;
import com.jade.service.StaffInfoService;
import com.jade.dao.StaffInfoMapper;

@Service("staffInfoService")
public class StaffInfoServiceImpl implements StaffInfoService {
	
	@Resource
	private StaffInfoMapper staffInfoDao;

	@Override
	public StaffInfo getStaffById(int staff_id) {
		// TODO Auto-generated method stub
		return this.staffInfoDao.selectByPrimaryKey(staff_id);
	}

	@Override
	public List<StaffInfo> getStaffByLeader(List<Integer> leaders) {
		// TODO Auto-generated method stub
		return this.staffInfoDao.selectByLeader(leaders);
	}

	@Override
	public Integer getCountByDetp(String dept, String fun) {
		// TODO Auto-generated method stub
		return this.staffInfoDao.selectDeptCount(dept, fun);
	}

	@Override
	public List<StaffInfo> getStaffByDF(String prov, String dept, String fun) {
		// TODO Auto-generated method stub
		return this.staffInfoDao.selectByDepFun(prov, dept, fun);
	}


}
