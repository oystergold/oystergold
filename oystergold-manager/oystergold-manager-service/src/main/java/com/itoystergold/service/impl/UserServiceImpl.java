package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

import com.alibaba.dubbo.config.annotation.Service;
import com.itoystergold.dao.UserDao;
import com.itoystergold.pojo.User;
import com.itoystergold.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> queryUser(User user) {
		List<User> list = userDao.queryUser(user.getUserName());
		if (!CollectionUtils.isEmpty(list)) {
			if (list.get(0).getPassword().equals(user.getPassword())) {
				return list;
			}
		}
		return null;
	}

}
