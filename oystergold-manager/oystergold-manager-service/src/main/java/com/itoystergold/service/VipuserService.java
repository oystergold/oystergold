package com.itoystergold.service;

import java.util.List;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.ext.VipuserPojo;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.utils.Page;

public interface VipuserService {

	void deleteVipuser(VipuserRequest request);

	void saveOrUpdateVipuser(VipuserRequest request);

	Page< VipuserPojo> selectVipusers(OysterPageRequest pageRequest,VipuserRequest request);

	VipuserPojo selectVipuserById(VipuserRequest request);
}
