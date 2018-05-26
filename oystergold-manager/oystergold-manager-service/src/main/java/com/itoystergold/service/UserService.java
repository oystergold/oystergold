package com.itoystergold.service;

import java.util.List;

import com.itoystergold.ext.UserPojo;
import com.itoystergold.request.UserRequest;

public interface UserService {

	List<UserPojo> queryUser(UserRequest reques);

}
