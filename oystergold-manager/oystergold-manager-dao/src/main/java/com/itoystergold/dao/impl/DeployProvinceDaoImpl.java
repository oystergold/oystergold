package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.DeployProvinceDao;
import com.itoystergold.mapper.DeployProvinceMapper;
import com.itoystergold.pojo.DeployProvince;
import com.itoystergold.pojo.DeployProvinceExample;

@Repository
public class DeployProvinceDaoImpl implements DeployProvinceDao{

	@Autowired
	private DeployProvinceMapper deployProvinceMapper;

	@Override
	public List<DeployProvince> selectProvinces() {
		DeployProvinceExample deployProvinceExample = new DeployProvinceExample();
		try {
			
			return deployProvinceMapper.selectByExample(deployProvinceExample);
		} catch (Exception e) {
			throw new RuntimeException("查询省份出错");
		}
	}

}
