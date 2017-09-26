package com.jade.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.pojo.UserInfo;
import com.jade.service.UserInfoService;

@Controller
public class UserLoginController {
	@Resource
	private UserInfoService userInfoService;
	
	@RequestMapping("/userLogin")
	public String dealLogin(HttpServletRequest request, Model model , UserInfo userInfo){
		System.out.println("password is :"+ userInfo.getUserPasswd());
		System.out.println("user is : "+userInfo.getUserId());
		String forwardString=null;
		UserInfo gettedUser =this.userInfoService.getUserInfoById(userInfo.getUserId());
		
		if( null==gettedUser )
		{
			return "errorIndex";
		}
		else if (!gettedUser.getUserPasswd().equals(userInfo.getUserPasswd()))
		{
			return "errorIndex";
		}
		else
		{
			switch(gettedUser.getUserLevel()){
				case 0: //超级用户页面
					forwardString="redirect:/";
					break;
				case 1: //省内管理者页面
					forwardString="redirect:/proManager?staff_id="+gettedUser.getUserId();
					break;
				case 2: //普通员工页面
					forwardString="redirect:/StaffInfo?staff_id="+gettedUser.getUserId();
					break;
			}
			return forwardString;
		}
	}
}
