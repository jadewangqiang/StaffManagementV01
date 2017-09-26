package com.jade.serviceImpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.jade.dao.ProvInfoMapper;
import com.jade.pojo.ProvInfo;
import com.jade.service.ProvInfoService;

@Service("provInfoService")
public class ProvInfoServiceImpl implements ProvInfoService {
	@Resource
	private ProvInfoMapper ProvInfoDao;
	@Override
	public ProvInfo getProvByCode(String prov_code) {
		// TODO Auto-generated method stub
		return this.ProvInfoDao.selectProvByCode(prov_code);
	}

}
