package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeploySubbankPojo;
import com.itoystergold.facade.DeploySubbankFacade;
import com.itoystergold.pojo.DeploySubbank;
import com.itoystergold.request.DeploySubbankRequest;
import com.itoystergold.service.DeploySubbankService;
import com.itoystergold.utils.ResultUtils;

@Service
public class DeploySubbankFacadeImpl implements DeploySubbankFacade{
	
	@Autowired
	private DeploySubbankService deploySubbankService;

	@Override
	public OysterResponse<DeploySubbankPojo> selectSubbankByCityCodeAndBankNo(DeploySubbankRequest request) {
		
		List<DeploySubbank> subbanks = deploySubbankService.selectSubbanksByCityCodeAndBankNo(request.getCityCode(),request.getBankNo());
		DeploySubbankPojo deploySubbankPojo = new DeploySubbankPojo();
		deploySubbankPojo.setDeplySubbank(subbanks);
		return ResultUtils.getSuccessResponse(deploySubbankPojo);
	}


}
