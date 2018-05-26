package com.itoystergold.service;

import com.itoystergold.ext.UserPojo;

public interface UserServiceC {
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	UserPojo login(String username, String password);

}
