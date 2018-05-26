package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.VipuserInfoDao;
import com.itoystergold.mapper.VipuserInfoMapper;
import com.itoystergold.pojo.VipuserInfo;
import com.itoystergold.pojo.VipuserInfoExample;

@Repository
public class VipuserInfoDaoImpl implements VipuserInfoDao{

	@Autowired
	private VipuserInfoMapper vipuserInfoMapper;
	
	@Override
	public int countByExample() {
		
		VipuserInfoExample vipuserInfoExample = new VipuserInfoExample();
		try {
			return	vipuserInfoMapper.countByExample(vipuserInfoExample);
		} catch (Exception e) {
			throw new RuntimeException("数据库查询会员详细信息记录数失败");
		}
	}

	@Override
	public int deleteByPrimaryKey(String vid) {

		try {
			return	vipuserInfoMapper.deleteByPrimaryKey(vid);
		} catch (Exception e) {
			throw new RuntimeException("数据库删除会员失败");
		}
	}

	@Override
	public int insertSelective(VipuserInfo record) {

		try {
			return	vipuserInfoMapper.insertSelective(record);
		} catch (Exception e) {
			throw new RuntimeException("数据库新增会员详细信息失败");
		}
	}

	@Override
	public VipuserInfo selectByPrimaryKey(String vid) {

		try {
			return	vipuserInfoMapper.selectByPrimaryKey(vid);
		} catch (Exception e) {
			throw new RuntimeException("数据库查询会员个人详细信息失败");
		}
	}

	@Override
	public int updateByPrimaryKeySelective(VipuserInfo record) {

		try {
			return	vipuserInfoMapper.updateByPrimaryKeySelective(record);
		} catch (Exception e) {
			throw new RuntimeException("数据库更新会员个人详细信息失败");
		}
	}

}
