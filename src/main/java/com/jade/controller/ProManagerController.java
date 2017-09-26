package com.jade.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.pojo.DeptPlan;
import com.jade.pojo.MatchSkillResult;
import com.jade.pojo.SkillPromotion;
import com.jade.pojo.StaffInfo;
import com.jade.service.DeptPlanService;
import com.jade.service.StaffInfoService;

@Controller
public class ProManagerController {
	
	@Resource 
	private StaffInfoService staffInfoService;
	@Resource
	private DeptPlanService deptPlanService;
	
	@RequestMapping("/proManager")
	public String toIndex(HttpServletRequest request, Model model ,@RequestParam(value="staff_id") int staffId){
		StaffInfo staffInfo = this.staffInfoService.getStaffById(staffId);
		List<StaffInfo> resultStaffList=new ArrayList<>();
		resultStaffList.add(staffInfo);
		List<DeptPlan> resultDeptPlan=new ArrayList<>();
		List<Integer> leaders=new ArrayList<>();
		leaders.add(staffInfo.getStaffId());
		String provInfo=staffInfo.getProvince();
		
		while(true){
			List<StaffInfo>staffList=this.staffInfoService.getStaffByLeader(leaders);
			List<DeptPlan>deptList=this.deptPlanService.getPlanByHandler(leaders);
			
			for(int j=0;j<deptList.size();j++){
				int staffCount=this.staffInfoService.getCountByDetp(deptList.get(j).getDepartmentId(), deptList.get(j).getFunctionId());
				deptList.get(j).setRealNum(staffCount);
				//计算部门缺口人数
				deptList.get(j).setUndermanned(deptList.get(j).getPlanNum()-staffCount);
				resultDeptPlan.add(deptList.get(j));
			}
			if(staffList.size()==0){
				break;
			}
			leaders.clear();
			for(int i=0;i<staffList.size();i++){
				resultStaffList.add(staffList.get(i));
				leaders.add(staffList.get(i).getStaffId());
			}
		}
		
		model.addAttribute("staffList",resultStaffList);
		model.addAttribute("deptPlan", resultDeptPlan);
		model.addAttribute("provInfo",provInfo);
		return "ProManager";
	}
}
