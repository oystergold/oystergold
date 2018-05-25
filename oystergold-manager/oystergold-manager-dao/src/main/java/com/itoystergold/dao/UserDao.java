package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.User;

public interface UserDao {

	List<User> queryUser(String username);

}
