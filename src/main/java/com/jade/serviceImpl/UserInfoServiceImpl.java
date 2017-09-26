package com.jade.serviceImpl;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import com.jade.dao.UserInfoMapper;
import com.jade.pojo.UserInfo;
import com.jade.service.UserInfoService;

@Service("UserInfoservice")
public class UserInfoServiceImpl implements UserInfoService {
	@Resource
	private UserInfoMapper userInfoDao;
	@Override
	public UserInfo getUserInfoById(int user_id) {
		// TODO Auto-generated method stub
		return this.userInfoDao.selectByPrimaryKey(user_id);
	}

}
