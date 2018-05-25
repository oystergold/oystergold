package com.itoystergold.service;

import com.itoystergold.pojo.User;

public interface userService {
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	User login(String username, String password);

}
