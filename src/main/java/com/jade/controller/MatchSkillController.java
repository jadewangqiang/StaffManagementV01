package com.jade.controller;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.pojo.DeptSkillReq;
import com.jade.pojo.MatchSkillResult;
import com.jade.pojo.StaffDetails;
import com.jade.pojo.StaffSkillInfo;
import com.jade.service.DeptSkillReqService;

@Controller
@RequestMapping("skill")
public class MatchSkillController {
	@Resource
	private DeptSkillReqService deptSkillReqService;
	
	@RequestMapping("MatchResults")
	public String toIndex(HttpServletRequest request, Model model ){
		HttpSession session=request.getSession();
		StaffDetails staffDetails=(StaffDetails) session.getAttribute("staff_details");
		List<DeptSkillReq> deptSkillReqList=this.deptSkillReqService.getSkillReqByDept(staffDetails.getStaffInfo().getProvince(), staffDetails.getStaffInfo().getDepartment(), staffDetails.getStaffInfo().getFunction());
		List<StaffSkillInfo> staffStillList=staffDetails.getStaffSkillList();
		List<MatchSkillResult> matchResultList=new ArrayList<>();
		
		//将员工技能信息插入结果表
		for(int i = 0 ;i<staffStillList.size();i++){
			MatchSkillResult tempMSR=new MatchSkillResult();
			tempMSR.setSkillId(staffStillList.get(i).getSkillId());
			tempMSR.setMatchResult(staffStillList.get(i).getSkillLevel());
			tempMSR.setSkillName(staffStillList.get(i).getSkill_name());
			matchResultList.add(tempMSR);
		}
		
		//遍历部门技能要求信息
		for(int j=0;j<deptSkillReqList.size();j++){
			int matchedFlag=0; //标记是否匹配得到
			//查找是否能匹配上员工现有技能
			for(int k=0;k<matchResultList.size();k++){
				if(deptSkillReqList.get(j).getSkillId().equals(matchResultList.get(k).getSkillId())){
					matchedFlag=1;//置位匹配标记
					//匹配上，需要将技能等级进行比较计算出差值，并更新结果
					MatchSkillResult updateMSR=new MatchSkillResult();
					updateMSR.setSkillId(deptSkillReqList.get(j).getSkillId());
					updateMSR.setMatchResult(deptSkillReqList.get(j).getRequireLevel()-matchResultList.get(k).getMatchResult());
					updateMSR.setSkillName(deptSkillReqList.get(j).getSkillName());
					matchResultList.set(k,updateMSR);
					break;
				}				
			}
			
			if(matchedFlag==0){
				//未匹配上，需要将其作为新节点插入结果队列中
				MatchSkillResult newMSR=new MatchSkillResult();
				newMSR.setSkillId(deptSkillReqList.get(j).getSkillId());
				newMSR.setMatchResult(0-deptSkillReqList.get(j).getRequireLevel());
				newMSR.setSkillName(deptSkillReqList.get(j).getSkillName());
				matchResultList.add(newMSR);
			}
		}
		model.addAttribute("matchResultList",matchResultList);
		
		return "ShowMatchResults";
		
	}

}
