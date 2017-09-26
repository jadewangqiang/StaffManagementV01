package com.jade.service;
import java.util.List;

import com.jade.pojo.StaffInfo;
public interface StaffInfoService {
	public StaffInfo getStaffById(int staff_id);
	public List<StaffInfo> getStaffByLeader(List<Integer> leaders);
	public Integer getCountByDetp(String dept,String fun);
	public List<StaffInfo> getStaffByDF(String prov,String dept,String fun);
}
