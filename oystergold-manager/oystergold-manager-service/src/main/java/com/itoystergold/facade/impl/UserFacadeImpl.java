package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.dubbo.config.annotation.Service;
import com.itoystergold.common.OysterResponse;
import com.itoystergold.facade.UserFacade;
import com.itoystergold.pojo.User;
import com.itoystergold.request.UserRequest;
import com.itoystergold.respone.UserRespone;
import com.itoystergold.service.UserService;

@Service
public class UserFacadeImpl implements UserFacade {
	
	@Autowired
	private UserService userService;
	
	@Override
	public OysterResponse<UserRespone> queryUser(UserRequest request) {
		User user = new User();
		
		List<User> list = userService.queryUser(user);
		return null;
	}

}
