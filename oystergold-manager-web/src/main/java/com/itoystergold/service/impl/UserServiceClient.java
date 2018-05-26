package com.itoystergold.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.facade.UserFacade;
import com.itoystergold.pojo.User;
import com.itoystergold.request.UserRequest;
import com.itoystergold.respone.UserRespone;
import com.itoystergold.service.UserServiceC;

@Service
public class UserServiceClient implements UserServiceC{
	
	private UserFacade userFacade;
	
	@Resource
	public void setUserFacade(UserFacade userFacade) {
		this.userFacade = userFacade;
	}
	
	@Override
	public User login(String username, String password) {
		UserRequest request = new UserRequest();
		OysterResponse<UserRespone> response = userFacade.queryUser(request);
		
		return null;
	}

}
