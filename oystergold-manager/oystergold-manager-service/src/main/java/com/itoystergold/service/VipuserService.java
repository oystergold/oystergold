package com.itoystergold.service;

import java.util.List;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.VipuserPojo;
import com.itoystergold.pojo.Vipuser;
import com.itoystergold.request.UserRequest;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.UserRespone;
import com.itoystergold.respone.VipuserRespone;

public interface VipuserService {

	OysterResponse<VipuserRespone> deleteVipuser(VipuserRequest request);

	OysterResponse<VipuserRespone> saveOrUpdateVipuser(VipuserRequest request);

	OysterResponse<VipuserRespone> selectVipusers(VipuserRequest request);

	OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request);
}
