package com.itoystergold.facade.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.UserPojo;
import com.itoystergold.facade.UserFacade;
import com.itoystergold.pojo.User;
import com.itoystergold.request.UserRequest;
import com.itoystergold.respone.UserRespone;
import com.itoystergold.service.UserService;
import com.itoystergold.utils.ResultUtils;

@Service
public class UserFacadeImpl implements UserFacade {
	
	@Autowired
	private UserService userService;
	
	@Override
	public OysterResponse<UserRespone> queryUser(UserRequest request) {
		
		List<UserPojo> list = userService.queryUser(request);
		
		UserRespone respone = new UserRespone();
		respone.setUsers(list);
		return ResultUtils.getSuccessResponse(respone);
	}

}
