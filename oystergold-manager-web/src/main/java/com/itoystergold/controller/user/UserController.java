package com.itoystergold.controller.user;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping("tologin")
	public String toLogin(String username,String password){
		if (StringUtils.isEmpty(username)||StringUtils.isEmpty(password)) {
			return "login/login";
		}
		return "home/fmain";
	}
	
	
	@RequestMapping("/user")
	public String selectUser() {
		
		/*System.out.println(demoUserService.selectUser());*/
		return "index";
	}
}
