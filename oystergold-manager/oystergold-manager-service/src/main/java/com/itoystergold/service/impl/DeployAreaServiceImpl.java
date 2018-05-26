package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.dao.DeployAreaDao;
import com.itoystergold.pojo.DeployArea;
import com.itoystergold.service.DeployAreaService;

@Service
public class DeployAreaServiceImpl implements DeployAreaService{

	@Autowired
	private DeployAreaDao deployAreaDao;
	
	@Override
	public List<DeployArea> selectAreasByCityCode(String cityCode) {
		
		return deployAreaDao.selectAreasByCityCode(cityCode);
	}

}
