package com.jade.dao;

import com.jade.pojo.ProvInfo;

public interface ProvInfoMapper {
    int insert(ProvInfo record);
    int insertSelective(ProvInfo record);
    ProvInfo selectProvByCode(String provCode);
}