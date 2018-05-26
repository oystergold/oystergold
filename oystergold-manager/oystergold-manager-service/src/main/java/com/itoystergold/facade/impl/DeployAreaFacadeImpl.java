package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.dao.DeployAreaDao;
import com.itoystergold.ext.DeployAreaPojo;
import com.itoystergold.facade.DeployAreaFacade;
import com.itoystergold.mapper.DeployAreaMapper;
import com.itoystergold.pojo.DeployArea;
import com.itoystergold.pojo.DeployAreaExample;
import com.itoystergold.request.DeployAreasRequest;
import com.itoystergold.service.DeployAreaService;
import com.itoystergold.utils.ResultUtils;

@Service
public class DeployAreaFacadeImpl implements DeployAreaFacade{
	
	@Autowired
	private DeployAreaService deployAreaService;

	@Override
	public OysterResponse<DeployAreaPojo> selectAreaByCityCode(DeployAreasRequest request) {
		
		List<DeployArea> areas = deployAreaService.selectAreasByCityCode(request.getCityCode());
		DeployAreaPojo deployAreaPojo = new DeployAreaPojo();
		deployAreaPojo.setDeployAreas(areas);
		return ResultUtils.getSuccessResponse(deployAreaPojo);
	}


}
