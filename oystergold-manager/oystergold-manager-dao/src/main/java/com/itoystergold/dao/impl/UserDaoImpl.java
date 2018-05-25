package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.UserDao;
import com.itoystergold.mapper.UserMapper;
import com.itoystergold.pojo.User;
import com.itoystergold.pojo.UserExample;

@Repository
public class UserDaoImpl implements UserDao {
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public List<User> queryUser(String username) {
		UserExample example = new UserExample();
		example.createCriteria().andUserNameEqualTo(username);
		try {
		return	userMapper.selectByExample(example);
		} catch (Exception e) {
			throw new RuntimeException("数据库查询失败");
		}
		
	}

}
