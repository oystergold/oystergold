package com.itoystergold.controller.vipuser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itoystergold.service.VipuserServiceC;
import com.itoystergold.utils.EsayUIDatagridResult;

@Controller
@RequestMapping("/vipuser")
public class VipuserController {
	
	@Autowired
	private VipuserServiceC vipuserServiceC;
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
	
	/**
	 * 调到会员列表页面
	 * @return
	 */
	@RequestMapping("/VipuserAction_list")
	public String toVipuserPage() {
		
		return "vipuser/VipuserManager/jVipuserList";
	}
	
	/**
	 * 分页列表
	 * @param vname 会员名
	 * @param vtelephone 会员电话
	 * @param vlevel  会员等级
	 * @param vstatus  会员状态
	 * @param page     当前页面
	 * @param rows   显示行数
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/vipuserAction_listResult")
	public EsayUIDatagridResult listVipuser(
			String vname, String vtelephone, String vlevel, String vstatus, Integer page,Integer rows) {
		
		EsayUIDatagridResult result = vipuserServiceC.vipuserList(vname, vtelephone, vlevel, vstatus, page, rows);
		return result;
	}
	
	/**
	 * 跳转到添加会员页面
	 */
	@RequestMapping("/vipuserAction_toCreate")
	public String toVipuserCreatePage() {
		
		return "vipuser/VipuserManager/jVipuserCreate";
	}
}
