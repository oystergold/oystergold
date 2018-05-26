package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.VipuserPojo;
import com.itoystergold.facade.VipuserFacade;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.VipuserRespone;
import com.itoystergold.service.VipuserService;
import com.itoystergold.utils.CollectionUtils;
import com.itoystergold.utils.ResultUtils;

@Service
public class VipuserFacadeImpl implements VipuserFacade {

	@Autowired
	private VipuserService vipuserService;

	@Override
	public OysterResponse<Void> deleteVipuser(VipuserRequest request) {
		
		vipuserService.deleteVipuser(request);
		return ResultUtils.getSuccessResponse(null);
	}

	@Override
	public OysterResponse<Void> saveOrUpdateVipuser(VipuserRequest request) {
		
		vipuserService.saveOrUpdateVipuser(request);
		return ResultUtils.getSuccessResponse(null);
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipusers(VipuserRequest request) {
		
		List<VipuserPojo> vipusers = vipuserService.selectVipusers(request);
		
		VipuserRespone respone = null;
		
		if(!CollectionUtils.isEmpty(vipusers)) {
			respone = new VipuserRespone();
			respone.setvipusers(vipusers);
			return ResultUtils.getSuccessResponse(respone);
		}
		return ResultUtils.getSuccessResponse(respone);
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request) {
		
		VipuserPojo vipuserPojo = vipuserService.selectVipuserById(request);
		VipuserRespone respone = new VipuserRespone();
		respone.setVipuserPojo(vipuserPojo);
		return ResultUtils.getSuccessResponse(respone);
	}


}
