package com.jade.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.jade.pojo.StaffType;
import com.jade.service.StaffTypeService;
import com.jade.dao.StaffTypeMapper;


@Service("startTypeService")
public class StaffTypeServiceImpl implements StaffTypeService {

	@Resource
	private StaffTypeMapper staffTypeDao;
	@Override
	public StaffType getTypeByValue(int staff_value) {
		// TODO Auto-generated method stub
		
		return this.staffTypeDao.selectTypeByValue(staff_value);
	}

}
