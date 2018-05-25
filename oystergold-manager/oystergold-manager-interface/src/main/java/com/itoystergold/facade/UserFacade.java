package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.request.UserRequest;
import com.itoystergold.respone.UserRespone;

public interface UserFacade {

	public OysterResponse<UserRespone> queryUser(UserRequest request);
	
}
