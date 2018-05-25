package com.itoystergold.controller.user;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itoystergold.pojo.User;
import com.itoystergold.service.userService;

@Controller
public class UserController {
	
	@Autowired
	private userService userservice;
	
	@RequestMapping("tologin")
	public String toLogin(String username,String password){
		if (StringUtils.isEmpty(username)||StringUtils.isEmpty(password)) {
			return "login/login";
		}
		User user = userservice.login(username,password);
		
		return "home/fmain";
	}
	
	
	@RequestMapping("/user")
	public String selectUser() {
		
		/*System.out.println(demoUserService.selectUser());*/
		return "index";
	}
}
