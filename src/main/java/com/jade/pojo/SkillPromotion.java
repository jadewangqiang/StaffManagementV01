package com.jade.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SkillPromotion {
    private Integer requestNo;

    private Integer staffId;

    private String skillId;
    
    private String skillName;

    private Float origLevel;

    private Float trgtLevel;

    private String reason;

    private Integer currentStatus;

    private Date statusDate;

    private Integer approver;

    public Integer getRequestNo() {
        return requestNo;
    }

    public void setRequestNo(Integer requestNo) {
        this.requestNo = requestNo;
    }

    public Integer getStaffId() {
        return staffId;
    }

    public void setStaffId(Integer staffId) {
        this.staffId = staffId;
    }

    public String getSkillId() {
        return skillId;
    }

    public void setSkillId(String skillId) {
        this.skillId = skillId == null ? null : skillId.trim();
    }

    public Float getOrigLevel() {
        return origLevel;
    }

    public void setOrigLevel(Float origLevel) {
        this.origLevel = origLevel;
    }

    public Float getTrgtLevel() {
        return trgtLevel;
    }

    public void setTrgtLevel(Float trgtLevel) {
        this.trgtLevel = trgtLevel;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public Integer getCurrentStatus() {
        return currentStatus;
    }

    public void setCurrentStatus(Integer currentStatus) {
        this.currentStatus = currentStatus;
    }

    public Date getStatusDate() {
        return statusDate;
    }
    
    public String getStatusDateString(){
    	SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd"); 
        String ctime = formatter.format(statusDate); 
        System.out.println(ctime);
    	return ctime ;
    }


    public void setStatusDate(Date statusDate) {
        this.statusDate = statusDate;
    }

    public Integer getApprover() {
        return approver;
    }

    public void setApprover(Integer approver) {
        this.approver = approver;
    }

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}
}