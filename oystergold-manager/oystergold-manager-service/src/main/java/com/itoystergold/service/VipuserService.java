package com.itoystergold.service;

import java.util.List;

import com.itoystergold.ext.VipuserPojo;
import com.itoystergold.request.VipuserRequest;

public interface VipuserService {

	void deleteVipuser(VipuserRequest request);

	void saveOrUpdateVipuser(VipuserRequest request);

	List<VipuserPojo> selectVipusers(VipuserRequest request);

	VipuserPojo selectVipuserById(VipuserRequest request);
}
