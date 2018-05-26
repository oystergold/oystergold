package com.itoystergold.dao;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.itoystergold.pojo.Vipuser;

public interface VipuserDao {

    int countByExample();

    int deleteByPrimaryKey(String vid);

    int insertSelective(Vipuser record);

    PageInfo<Vipuser> selectByExample(String vname,String phoneNo,String vlevel,String vstatus,Integer start,Integer pagesize);

    Vipuser selectByPrimaryKey(String vid);

    int updateByPrimaryKeySelective(Vipuser record);

}
