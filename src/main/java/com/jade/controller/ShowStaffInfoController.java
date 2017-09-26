package com.jade.controller;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.pojo.FunctionInfo;
import com.jade.pojo.ProvInfo;
import com.jade.pojo.StaffDetails;
import com.jade.pojo.StaffInfo;
import com.jade.pojo.StaffType;
import com.jade.pojo.DeptInfo;
import com.jade.pojo.StaffSkillInfo;
import com.jade.service.DeptInfoService;
import com.jade.service.FunInfoService;
import com.jade.service.ProvInfoService;
import com.jade.service.StaffInfoService;
import com.jade.service.StaffTypeService;
import com.jade.service.StaffSkillService;


@Controller
@RequestMapping("staff")
public class ShowStaffInfoController {
	@Resource
	private StaffInfoService staffInfoService;
	@Resource
	private StaffTypeService staffTypeService;
	@Resource
	private ProvInfoService provInfoService;
	@Resource
	private FunInfoService funInfoService;
	@Resource
	private DeptInfoService deptInfoService;
	@Resource
	private StaffSkillService staffSkillService;
	
	@RequestMapping("/showStaffInfo")
	public String toIndex(HttpServletRequest request, Model model ,@RequestParam(value="staff_id") int staffId){
		StaffInfo staffInfo = this.staffInfoService.getStaffById(staffId);
		StaffType staffType=this.staffTypeService.getTypeByValue(staffInfo.getStaffType());
		ProvInfo provInfo=this.provInfoService.getProvByCode(staffInfo.getProvince());
		FunctionInfo funInfo=this.funInfoService.getFunById(staffInfo.getFunction());
		DeptInfo deptInfo=this.deptInfoService.getDPNameById(staffInfo.getDepartment());
		List<StaffSkillInfo> staffSkillInfo=this.staffSkillService.getStSkNaById(staffId);
		
		StaffDetails staffdetails=new StaffDetails();
		staffdetails.setStaffInfo(staffInfo);
		staffdetails.setSTValue(staffType.getNote());
		staffdetails.setProv(provInfo.getProvinceName());
		staffdetails.setFun(funInfo.getFunctionName());
		staffdetails.setDept(deptInfo.getDepartmentName());
		staffdetails.setStaffSkillList(staffSkillInfo);
		
		model.addAttribute("staffdetails",staffdetails);
		
		return "ShowStaffInfo";
	}
}
