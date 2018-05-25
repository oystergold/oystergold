package com.itoystergold.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.facade.UserFacade;
import com.itoystergold.pojo.User;
import com.itoystergold.service.userService;

@Service
public class UserServiceClient implements userService{
	
	@Autowired
	private UserFacade userFacade;
	
	@Override
	public User login(String username, String password) {
		return null;
	}

}
