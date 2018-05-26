package com.itoystergold.controller.vipuser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/vipuser")
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
	
	@RequestMapping("/VipuserAction_list")
	public String toVipuserPage() {
		
		return "vipuser/VipuserManager/jVipuserList";
	}
	
	@ResponseBody
	@RequestMapping("/vipuserAction_listResult")
	public String listVipuser() {
		
		return null;
	}
	
	/**
	 * 跳转到添加会员页面
	 */
	@RequestMapping("/vipuserAction_toCreate")
	public String toVipuserCreatePage() {
		
		return "vipuser/VipuserManager/jVipuserCreate";
	}
}
