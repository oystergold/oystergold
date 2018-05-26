package com.itoystergold.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.facade.VipuserFacade;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.VipuserRespone;
import com.itoystergold.service.VipuserService;

@Service
public class VipuserFacadeImpl implements VipuserFacade {

	@Autowired
	private VipuserService vipuserService;

	@Override
	public OysterResponse<VipuserRespone> deleteVipuser(VipuserRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OysterResponse<VipuserRespone> saveOrUpdateVipuser(VipuserRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipusers(VipuserRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

}
