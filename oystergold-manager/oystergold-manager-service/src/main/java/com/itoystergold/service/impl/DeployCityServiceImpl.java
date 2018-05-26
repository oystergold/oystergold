package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.dao.DeployCityDao;
import com.itoystergold.pojo.DeployCity;
import com.itoystergold.service.DeployCityService;

@Service
public class DeployCityServiceImpl implements DeployCityService{

	@Autowired
	private DeployCityDao deployCityDao;
	
	@Override
	public List<DeployCity> selectCitysByProvinceCode(String provinceCode) {
		
		return deployCityDao.selectCitiesByProvinceCode(provinceCode);
	}

}
