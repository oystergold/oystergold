package com.itoystergold.controller.vipuser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VipuserController {
	
	
	@RequestMapping("vipuserAction_toleft")
	public String left(String moduleName){
		System.out.println(moduleName);
		
		return  moduleName+"/left";
	}
	
	@RequestMapping("vipuserAction_tomain")
	public String main(String moduleName){
		System.out.println(moduleName);
		return  moduleName+"/main";
	}
}
