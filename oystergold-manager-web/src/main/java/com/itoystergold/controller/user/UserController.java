package com.itoystergold.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itoystergold.ext.UserPojo;
import com.itoystergold.pojo.User;
import com.itoystergold.service.UserServiceC;

@Controller
public class UserController {
	
	@Autowired
	private UserServiceC userserviceC;
	
	@RequestMapping("tologin")
	public String toLogin(String username,String password,HttpSession session){
		if (StringUtils.isEmpty(username)||StringUtils.isEmpty(password)) {
			return "login/login";
		}
		UserPojo user = userserviceC.login(username,password);
		
		session.setAttribute("user", user);
		 
		return "home/fmain";
	}
	
	
	
}
