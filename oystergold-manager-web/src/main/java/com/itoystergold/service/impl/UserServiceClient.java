package com.itoystergold.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.enums.EnumResponseType;
import com.itoystergold.ext.UserPojo;
import com.itoystergold.facade.UserFacade;
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
	public UserPojo login(String username, String password) {
		UserRequest request = new UserRequest();
		request.setUserName(username);
		request.setPassword(password);
		OysterResponse<UserRespone> response = userFacade.queryUser(request);
		
		if (EnumResponseType.SUCCESS.getCode().equals(response.getResponseType().getCode())) {
			
			if (response.getReturnObject() != null && response.getReturnObject().getUsers() !=null) {
				return response.getReturnObject().getUsers().get(0);
			}
			
		}
		
		return null;
	}

}
