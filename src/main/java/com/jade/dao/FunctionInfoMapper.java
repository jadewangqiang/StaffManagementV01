package com.jade.dao;

import com.jade.pojo.FunctionInfo;

public interface FunctionInfoMapper {
    int insert(FunctionInfo record);
    int insertSelective(FunctionInfo record);
    FunctionInfo selectFunById(String functionId);
}