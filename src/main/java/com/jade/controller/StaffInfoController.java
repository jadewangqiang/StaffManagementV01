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
import com.jade.pojo.FunctionInfo;
import com.jade.pojo.MatchSkillResult;
import com.jade.pojo.ProvInfo;
import com.jade.pojo.SkillPromotion;
import com.jade.pojo.StaffDetails;
import com.jade.pojo.StaffInfo;
import com.jade.pojo.StaffType;
import com.jade.pojo.DeptInfo;
import com.jade.pojo.StaffSkillInfo;
import com.jade.pojo.SubSkill;
import com.jade.service.DeptInfoService;
import com.jade.service.DeptSkillReqService;
import com.jade.service.FunInfoService;
import com.jade.service.ProvInfoService;
import com.jade.service.SkillPromService;
import com.jade.service.StaffInfoService;
import com.jade.service.StaffTypeService;
import com.jade.service.StaffSkillService;
import com.jade.service.SubSkillService;


@Controller
public class StaffInfoController {
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
	@Resource
	private SubSkillService subSkillService;
	@Resource
	private DeptSkillReqService deptSkillReqService;
	@Resource
	private SkillPromService skillPromService;
	
	
	@RequestMapping("/StaffInfo")
	public String toIndex(HttpServletRequest request, Model model ,@RequestParam(value="staff_id") int staffId){
		StaffInfo staffInfo = this.staffInfoService.getStaffById(staffId);
		StaffType staffType=this.staffTypeService.getTypeByValue(staffInfo.getStaffType());
		ProvInfo provInfo=this.provInfoService.getProvByCode(staffInfo.getProvince());
		FunctionInfo funInfo=this.funInfoService.getFunById(staffInfo.getFunction());
		DeptInfo deptInfo=this.deptInfoService.getDPNameById(staffInfo.getDepartment());
		List<StaffSkillInfo> staffSkillInfo=this.staffSkillService.getStSkNaById(staffId);
		List<SkillPromotion>skillPromHis=this.skillPromService.selectPromHis(staffId);
		
		System.out.println(staffInfo.getProvince()+"  "+staffInfo.getDepartment()+"  "+staffInfo.getFunction());
		
		List<DeptSkillReq> deptSkillReqList=this.deptSkillReqService.getSkillReqByDept(staffInfo.getProvince(),staffInfo.getDepartment() ,staffInfo.getFunction() );
		List<MatchSkillResult> matchResultList=new ArrayList<>();
		
		//先将员工技能信息插入结果表
		for(int i = 0 ;i<staffSkillInfo.size();i++){
			MatchSkillResult tempMSR=new MatchSkillResult();
			tempMSR.setSkillId(staffSkillInfo.get(i).getSkillId());
			tempMSR.setMatchResult(staffSkillInfo.get(i).getSkillLevel());
			tempMSR.setSkillLevel(staffSkillInfo.get(i).getSkillLevel());
			tempMSR.setSkillName(staffSkillInfo.get(i).getSkill_name());
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
					updateMSR.setMatchResult(matchResultList.get(k).getMatchResult()-deptSkillReqList.get(j).getRequireLevel());
					updateMSR.setSkillLevel(matchResultList.get(k).getMatchResult());
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
				newMSR.setSkillLevel((float) 0);
				newMSR.setSkillName(deptSkillReqList.get(j).getSkillName());
				matchResultList.add(newMSR);
			}
		}
		
		
		//List<SubSkill> subSkillList=this.subSkillService.getAllSubSK();
		List<SubSkill> DI0=this.subSkillService.getDI0Skill();
		List<SubSkill> DI1=this.subSkillService.getDI1Skill();
		List<SubSkill> SK0=this.subSkillService.getSK0Skill();
		List<SubSkill> AB0=this.subSkillService.getAB0Skill();
		List<SubSkill> AB1=this.subSkillService.getAB1Skill();
		
		StaffDetails staffdetails=new StaffDetails();
		staffdetails.setStaffInfo(staffInfo);
		staffdetails.setSTValue(staffType.getNote());
		staffdetails.setProv(provInfo.getProvinceName());
		staffdetails.setFun(funInfo.getFunctionName());
		staffdetails.setDept(deptInfo.getDepartmentName());
		staffdetails.setStaffSkillList(staffSkillInfo);
		staffdetails.setProvNote(provInfo.getNote());
		staffdetails.setMatchSkillResult(matchResultList);
		staffdetails.setSkillPromHis(skillPromHis);
		
		
		model.addAttribute("staffdetails",staffdetails);
		model.addAttribute("DI0",DI0);
		model.addAttribute("DI1",DI1);
		model.addAttribute("SK0",SK0);
		model.addAttribute("AB0",AB0);
		model.addAttribute("AB1",AB1);
		return "StaffInfo";
	}
}
