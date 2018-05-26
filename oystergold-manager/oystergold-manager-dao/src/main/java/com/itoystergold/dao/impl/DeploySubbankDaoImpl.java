package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.DeployCityDao;
import com.itoystergold.mapper.DeployCityMapper;
import com.itoystergold.pojo.DeployCityExample;
import com.itoystergold.pojo.DeployCity;

@Repository
public class DeploySubbankDaoImpl implements DeployCityDao{
	
	@Autowired
	private DeployCityMapper deployCityMapper;

	@Override
	public List<DeployCity> selectCitiesByProvinceCode(String provinceCode) {
		DeployCityExample deployCityExample = new DeployCityExample();
		deployCityExample.createCriteria().andProvinceCodeEqualTo(provinceCode);
		try {
			
			return deployCityMapper.selectByExample(deployCityExample);
		} catch (Exception e) {
			throw new RuntimeException("查询城市出错");
		}
	}

}
