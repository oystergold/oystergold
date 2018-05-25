package com.itoystergold.service.impl;

import java.util.List;

import com.alibaba.dubbo.config.annotation.Service;
import com.itoystergold.dao.UserDao;
import com.itoystergold.pojo.User;
import com.itoystergold.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDao userDao;
	
	@Override
	public List<User> queryUser(User user) {
		List<User> list = userDao.queryUser(user.getUserName());
		return list;
	}

}
