package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.DeployAreaDao;
import com.itoystergold.mapper.DeployAreaMapper;
import com.itoystergold.pojo.DeployArea;
import com.itoystergold.pojo.DeployAreaExample;

@Repository
public class DeployAreaDaoImpl implements DeployAreaDao{
	
	@Autowired
	private DeployAreaMapper deployAreaMapper;

	@Override
	public List<DeployArea> selectAreasByCityCode(String cityCode) {
		
		DeployAreaExample deployAreaExample = new DeployAreaExample();
		deployAreaExample.createCriteria().andCityCodeEqualTo(cityCode);
		try {
			
			return deployAreaMapper.selectByExample(deployAreaExample);
		} catch (Exception e) {
			throw new RuntimeException("查询地区出错");
		}
	}

}
