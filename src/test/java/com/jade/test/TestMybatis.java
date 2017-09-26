package com.jade.test;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.junit.Test;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner; 

import com.alibaba.fastjson.JSON;
import com.jade.pojo.StaffInfo;
import com.jade.service.StaffInfoService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})

public class TestMybatis {
	private static Logger logger=Logger.getLogger(TestMybatis.class);
	
	@Resource
	private StaffInfoService staffInfoService =null;
	
	@Test
	public void test(){
		StaffInfo staffInfo=staffInfoService.getStaffById(35720);	
		//System.out.println(staffInfo.getFunction());
		logger.info(JSON.toJSONString(staffInfo));
	}
}
