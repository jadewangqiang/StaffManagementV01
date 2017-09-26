package com.jade.pojo;

import java.util.ArrayList;

public class SubSkillList {
	private String subSkillID;
	private String subSkillName;
	private ArrayList<MatchSkillResult> skillList;
	public String getSubSkillID() {
		return subSkillID;
	}
	public void setSubSkillID(String subSkillID) {
		this.subSkillID = subSkillID;
	}
	public String getSubSkillName() {
		return subSkillName;
	}
	public void setSubSkillName(String subSkillName) {
		this.subSkillName = subSkillName;
	}
	public ArrayList<MatchSkillResult> getSkillList() {
		return skillList;
	}
	public void setSkillList(ArrayList<MatchSkillResult> skillList) {
		this.skillList = skillList;
	}

}
