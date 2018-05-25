package com.itoystergold.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("homeAction_title")
	public String title(){
	
//         List<String> weather = homeService.getWeather();
//        ServletActionContext.getContext().getValueStack().set("weather", weather.get(4));
//		
		return "home/title";
	}
	
	@RequestMapping("homeAction_toleft")
	public String left(String moduleName){
		System.out.println(moduleName);
		
		return  moduleName+"/left";
	}
	
	@RequestMapping("homeAction_tomain")
	public String main(String moduleName){
		System.out.println(moduleName);
		return  moduleName+"/main";
	}
	
	
}
