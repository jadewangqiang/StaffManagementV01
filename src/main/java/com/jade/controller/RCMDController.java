package com.jade.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.pojo.DeptSkillReq;
import com.jade.pojo.StaffInfo;
import com.jade.pojo.StaffRcmd;
import com.jade.service.DeptSkillReqService;
import com.jade.service.StaffInfoService;

@Controller
//staff recommendation 员工推荐--RCMD
public class RCMDController {
	@Resource
	private DeptSkillReqService deptSkillReqService;
	@Resource
	private StaffInfoService staffInfoService;
	
	
	@RequestMapping("/Recommendation")
	public String toIndex(HttpServletRequest request, Model model ,@RequestParam(value="Prov_id") String provId,@RequestParam(value="Dept_id") String deptId,@RequestParam(value="Fun_id") String funId ){
		
		//根据province、department与function 获取 能力需要
		List<DeptSkillReq> deptSkillReqList=this.deptSkillReqService.getSkillReqByDept(provId.trim(), deptId.trim(), funId.trim());
		
		//根据province、department与function 获取除本部门人员以外的员工全集
		List<StaffInfo> staffList=this.staffInfoService.getStaffByDF(provId.trim(), deptId.trim(), funId.trim());
		
		List<StaffRcmd> rcmdList=new ArrayList<>(); //结果值List
		//循环遍历员工list，分别与部门能力需要进行比较，计算出分值差 （只对部门需要的技能进行比较，员工具备的范围外技能不加分），在分界分差以内的，插入到推荐员工列表中。
		
		for()
		
		return "";
	}
}
