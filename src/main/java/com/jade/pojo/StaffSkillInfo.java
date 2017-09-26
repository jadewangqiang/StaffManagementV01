package com.jade.pojo;

public class StaffSkillInfo extends StaffSkillInfoKey {
    private Float skillLevel;
    private String skillName;

    public Float getSkillLevel() {
        return skillLevel;
    }

    public void setSkillLevel(Float skillLevel) {
        this.skillLevel = skillLevel;
    }

	public String getSkill_name() {
		return skillName;
	}

	public void setSkill_name(String skill_name) {
		this.skillName = skill_name;
	}
}