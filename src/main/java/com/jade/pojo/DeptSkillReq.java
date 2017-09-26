package com.jade.pojo;

public class DeptSkillReq {
    private String provinceCode;

    private String departmentId;

    private String functionId;

    private String skillId;

    private Float requireLevel;
    
    //补充关联能力名称
    private String skillName;

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode == null ? null : provinceCode.trim();
    }

    public String getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(String departmentId) {
        this.departmentId = departmentId == null ? null : departmentId.trim();
    }

    public String getFunctionId() {
        return functionId;
    }

    public void setFunctionId(String functionId) {
        this.functionId = functionId == null ? null : functionId.trim();
    }

    public String getSkillId() {
        return skillId;
    }

    public void setSkillId(String skillId) {
        this.skillId = skillId == null ? null : skillId.trim();
    }

    public Float getRequireLevel() {
        return requireLevel;
    }

    public void setRequireLevel(Float requireLevel) {
        this.requireLevel = requireLevel;
    }

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
}