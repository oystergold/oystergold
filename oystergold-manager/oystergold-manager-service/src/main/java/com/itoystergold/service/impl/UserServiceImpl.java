package com.itoystergold.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import com.itoystergold.dao.UserDao;
import com.itoystergold.ext.UserPojo;
import com.itoystergold.pojo.User;
import com.itoystergold.request.UserRequest;
import com.itoystergold.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<UserPojo> queryUser(UserRequest request) {
		
		
		
		List<User> list = userDao.queryUser(request.getUserName());
		if (!CollectionUtils.isEmpty(list)) {
			if (list.get(0).getPassword().equals(request.getPassword())) {
				
				List<UserPojo> users = new ArrayList<UserPojo>();
				for (User user2 : list) {
					UserPojo pojo = new UserPojo();
					BeanUtils.copyProperties(user2, pojo);
					users.add(pojo);
				}
				return users;
			}
		}
		return null;
	}

}
