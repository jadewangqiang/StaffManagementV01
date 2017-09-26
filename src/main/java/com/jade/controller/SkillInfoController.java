package com.jade.controller;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.bind.annotation.RequestParam;

import com.jade.service.DeptSkillReqService;
import com.jade.pojo.DeptSkillReq;

@Controller
@RequestMapping("skill")
public class SkillInfoController {
	@Resource 
	private DeptSkillReqService deptSkillReqService;
	@RequestMapping("DeptSkillReq")
	public String toIndex(HttpServletRequest request, Model model ,@RequestParam(value="Prov_id") String provId,@RequestParam(value="Dept_id") String deptId,@RequestParam(value="Fun_id") String funId){
		
		System.out.println("PROV:"+provId+"  DEPT:"+deptId+"  FUN:"+funId);
		List<DeptSkillReq> deptSkillReqList=this.deptSkillReqService.getSkillReqByDept(provId, deptId, funId);
		model.addAttribute("skillReqList",deptSkillReqList);
		return "ShowDeptSkillReq";
	}
}
