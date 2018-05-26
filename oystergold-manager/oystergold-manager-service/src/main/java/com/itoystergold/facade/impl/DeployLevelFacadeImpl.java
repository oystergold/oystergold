package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeployLevelPojo;
import com.itoystergold.facade.DeployLevelFacade;
import com.itoystergold.pojo.DeployLevel;
import com.itoystergold.service.DeployLevelService;
import com.itoystergold.utils.ResultUtils;

@Service
public class DeployLevelFacadeImpl implements DeployLevelFacade{

	@Autowired
	private DeployLevelService deployLevelService;

	@Override
	public OysterResponse<DeployLevelPojo> seleceLevels() {
		
		List<DeployLevel> levels = deployLevelService.selectLevels();
		DeployLevelPojo deployLevelPojo = new DeployLevelPojo();
		deployLevelPojo.setDeployLevels(levels);
		return ResultUtils.getSuccessResponse(deployLevelPojo);
	}

}
