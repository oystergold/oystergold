package com.itoystergold.facade;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.common.OysterResponse;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.SettleSerialRespone;
import com.itoystergold.respone.VipuserRespone;

public interface VipuserFacade {
	
	OysterResponse<Void> deleteVipuser(VipuserRequest request);

	OysterResponse<Void> saveOrUpdateVipuser(VipuserRequest request);

	OysterPageResponse<VipuserRespone> selectVipusers(OysterPageRequest pageRequest,VipuserRequest request);

	OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request);
}
