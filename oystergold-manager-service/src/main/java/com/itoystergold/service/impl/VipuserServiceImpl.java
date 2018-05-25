package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.mapper.VipuserMapper;
import com.itoystergold.pojo.Vipuser;
import com.itoystergold.pojo.VipuserExample;
import com.itoystergold.service.VipuserService;

@Service
public class VipuserServiceImpl implements 	VipuserService{

	@Autowired
	private VipuserMapper VipuserMapper;

	@Override
	public int countByExample(VipuserExample example) {

		return 0;
	}

	@Override
	public int deleteByPrimaryKey(String vid) {

		return 0;
	}

	@Override
	public int insertSelective(Vipuser record) {

		return 0;
	}

	@Override
	public List<Vipuser> selectByExample(VipuserExample example) {

		return null;
	}

	@Override
	public Vipuser selectByPrimaryKey(String vid) {

		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Vipuser record) {

		return 0;
	}
	
}
