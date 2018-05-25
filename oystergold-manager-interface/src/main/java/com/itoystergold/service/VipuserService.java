package com.itoystergold.service;

import java.util.List;

import com.itoystergold.pojo.Vipuser;
import com.itoystergold.pojo.VipuserExample;

public interface VipuserService {
	
    int countByExample(VipuserExample example);

    int deleteByPrimaryKey(String vid);

    int insertSelective(Vipuser record);

    List<Vipuser> selectByExample(VipuserExample example);

    Vipuser selectByPrimaryKey(String vid);

    int updateByPrimaryKeySelective(Vipuser record);

}
