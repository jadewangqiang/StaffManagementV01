package com.jade.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.jade.pojo.StaffInfo;

public interface StaffInfoMapper {
    int deleteByPrimaryKey(Integer staffId);

    int insert(StaffInfo record);

    int insertSelective(StaffInfo record);

    StaffInfo selectByPrimaryKey(Integer staffId);

    int updateByPrimaryKeySelective(StaffInfo record);

    int updateByPrimaryKey(StaffInfo record);
    
    List<StaffInfo> selectByLeader(List<Integer> leaders);
    
    List<StaffInfo> selectByDepFun(@Param(value="provId") String prov_id,@Param(value="deptId")String dept_id,@Param(value="funId")String fun_id);
    
    int selectDeptCount(String dept,String fun);
}