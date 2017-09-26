package com.jade.pojo;

import java.util.List;

public class StaffDetails  {
	private StaffInfo staff_info;
	private String staffTypeValue;
	private String provValue;
	private String provNote;
	private String funValue;
	private String deptValue;
	private List<StaffSkillInfo> staffSkillList;
	private List<MatchSkillResult> matchSkillResult;
	private List<SkillPromotion> skillPromHis;
	public StaffInfo getStaffInfo(){
		return this.staff_info;
	}
	public void setStaffInfo(StaffInfo staff_info){
		this.staff_info=staff_info;
	}
	
    public String getGenderValue() {
        String genderValue=null;
        genderValue= staff_info.getGender()==1?"男":"女";
    	return genderValue;
    }
    
    public void setProv(String prov){
    	this.provValue=prov;
    }
    public String getProv(){
    	return this.provValue;
    }
    
    public void setFun(String fun){
    	this.funValue=fun;
    }
    public String getFun(){
    	return this.funValue;
    }
    
    public void setDept(String dept){
    	this.deptValue=dept;
    }
    public String getDept(){
    	return this.deptValue;
    }
    
    public void setSTValue(String stValue){
    	this.staffTypeValue=stValue;
    }
    public String getSTValue(){
    	return this.staffTypeValue;
    }
	public List<StaffSkillInfo> getStaffSkillList() {
		return staffSkillList;
	}
	public void setStaffSkillList(List<StaffSkillInfo> staffSkillList) {
		this.staffSkillList = staffSkillList;
	}
	public String getProvNote() {
		return provNote;
	}
	public void setProvNote(String provNote) {
		this.provNote = provNote;
	}
	public List<MatchSkillResult> getMatchSkillResult() {
		return matchSkillResult;
	}
	public void setMatchSkillResult(List<MatchSkillResult> matchSkillResult) {
		this.matchSkillResult = matchSkillResult;
	}
	public List<SkillPromotion> getSkillPromHis() {
		return skillPromHis;
	}
	public void setSkillPromHis(List<SkillPromotion> skillPromHis) {
		this.skillPromHis = skillPromHis;
	}
    
    //偷懒,不查询
    /*public String getStaffTypeValue() {
    	String staffTypeValue=null;
    	switch(staff_info.getStaffType()){
    	case 0 :
    			staffTypeValue="Emplyee";
    			break;
    	case 1:
    		staffTypeValue="Outsourcing";
    			break;
    	case 2:
    		staffTypeValue="Trainee";
    			break;
    	default:
    		staffTypeValue="unknown";
    			break;
    	}
    	return staffTypeValue;
    }*/
}