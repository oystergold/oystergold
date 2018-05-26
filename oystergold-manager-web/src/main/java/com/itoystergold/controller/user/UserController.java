package com.itoystergold.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itoystergold.pojo.User;
import com.itoystergold.service.UserServiceC;

@Controller
public class UserController {
	
	@Autowired
	private UserServiceC userserviceC;
	
	@RequestMapping("tologin")
	public String toLogin(String username,String password){
		if (StringUtils.isEmpty(username)||StringUtils.isEmpty(password)) {
			return "login/login";
		}
		User user = userserviceC.login(username,password);
		
		return "home/fmain";
	}
	
	
	@RequestMapping("/user")
	public String selectUser() {
		
		/*System.out.println(demoUserService.selectUser());*/
		return "index";
	}
}
