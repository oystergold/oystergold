package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.dao.DeployProvinceDao;
import com.itoystergold.pojo.DeployProvince;
import com.itoystergold.service.DeployProvinceService;

@Service
public class DeployProvinceServiceImpl implements DeployProvinceService{

	@Autowired
	private DeployProvinceDao deployProvinceDao;
	
	@Override
	public List<DeployProvince> selectProvinces() {
		// TODO Auto-generated method stub
		return deployProvinceDao.selectProvinces();
	}

}
