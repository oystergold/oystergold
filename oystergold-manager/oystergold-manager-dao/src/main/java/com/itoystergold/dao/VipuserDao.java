package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.Vipuser;

public interface VipuserDao {

    int countByExample();

    int deleteByPrimaryKey(String vid);

    int insertSelective(Vipuser record);

    List<Vipuser> selectByExample(String vname,String phoneNo,String vlevel,String vstatus);

    Vipuser selectByPrimaryKey(String vid);

    int updateByPrimaryKeySelective(Vipuser record);

}
