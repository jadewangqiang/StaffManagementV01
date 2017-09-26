package com.jade.serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.jade.pojo.DeptInfo;
import com.jade.service.DeptInfoService;
import com.jade.dao.DeptInfoMapper;

@Service("deptInfoService")
public class DeptInfoServiceImpl implements DeptInfoService {
	@Resource
	private DeptInfoMapper deptInfoDao;
	@Override
	public DeptInfo getDPNameById(String dept_id) {
		// TODO Auto-generated method stub
		return this.deptInfoDao.selectDPNameById(dept_id);
	}

}
