package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.dao.DeployProvinceDao;
import com.itoystergold.ext.DeployProvincePojo;
import com.itoystergold.facade.DeployProvinceFacade;
import com.itoystergold.pojo.DeployProvince;
import com.itoystergold.service.DeployProvinceService;
import com.itoystergold.utils.ResultUtils;

@Service
public class DeployProvinceFacadeImpl implements DeployProvinceFacade{

	@Autowired
	private DeployProvinceService deployProvinceService;

	@Override
	public OysterResponse<DeployProvincePojo> selectProvinces() {
		
		List<DeployProvince> provinces = deployProvinceService.selectProvinces();
		
		DeployProvincePojo deployProvincePojo = new DeployProvincePojo();
		deployProvincePojo.setDeployProvinces(provinces);
		
		return ResultUtils.getSuccessResponse(deployProvincePojo);
	}

}
