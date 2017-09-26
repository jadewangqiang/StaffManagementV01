package com.jade.serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.jade.dao.FunctionInfoMapper;
import com.jade.pojo.FunctionInfo;
import com.jade.service.FunInfoService;

@Service("funInfoService")
public class FunInfoServiceImpl implements FunInfoService {
	@Resource
	private FunctionInfoMapper FunInfoDao;
	@Override
	public FunctionInfo getFunById(String fun_id) {
		// TODO Auto-generated method stub
		return this.FunInfoDao.selectFunById(fun_id);
	}

}
