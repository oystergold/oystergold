package com.itoystergold.dao;

import com.itoystergold.pojo.VipuserInfo;

public interface VipuserInfoDao {

    int countByExample();

    int deleteByPrimaryKey(String vid);

    int insertSelective(VipuserInfo record);

    VipuserInfo selectByPrimaryKey(String vid);

    int updateByPrimaryKeySelective(VipuserInfo record);

}
