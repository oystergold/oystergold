package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.VipuserRespone;

public interface VipuserFacade {
	
	OysterResponse<Void> deleteVipuser(VipuserRequest request);

	OysterResponse<Void> saveOrUpdateVipuser(VipuserRequest request);

	OysterResponse<VipuserRespone> selectVipusers(VipuserRequest request);

	OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request);
}
