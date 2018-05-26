package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.dao.DeployCityDao;
import com.itoystergold.ext.DeployCityPojo;
import com.itoystergold.facade.DeployCityFacade;
import com.itoystergold.mapper.DeployCityMapper;
import com.itoystergold.pojo.DeployCityExample;
import com.itoystergold.request.DeployCityRequest;
import com.itoystergold.service.DeployCityService;
import com.itoystergold.utils.ResultUtils;
import com.itoystergold.pojo.DeployCity;

@Service
public class DeployCityFacadeImpl implements DeployCityFacade{

	@Autowired
    private DeployCityService deployCityService;
	
	@Override
	public OysterResponse<DeployCityPojo> selectAreaByCityCode(DeployCityRequest request) {
		
		List<DeployCity> cities = deployCityService.selectCitysByProvinceCode(request.getProvinceCode());
		
		DeployCityPojo deployCityPojo = new DeployCityPojo();
		deployCityPojo.setDeplyCities(cities);
		
		return ResultUtils.getSuccessResponse(deployCityPojo);
	}
	


}
