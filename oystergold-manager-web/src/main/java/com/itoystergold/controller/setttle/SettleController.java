package com.itoystergold.controller.setttle;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itoystergold.ext.SettleSerialPojo;
import com.itoystergold.service.SettleServiceC;
import com.itoystergold.utils.E3Result;
import com.itoystergold.utils.EsayUIDatagridResult;
import com.itoystergold.utils.Page;

@Controller
@RequestMapping("/settlecenter")
public class SettleController {
	
	@Autowired
	private SettleServiceC settleServiceC;
	
	@RequestMapping("/settle/settle_list")
	public String settle_list(){
		return "settlecenter/settle/settlelist";
	}
	
	@RequestMapping("/settle_listResult2")
	@ResponseBody
	public EsayUIDatagridResult settle_listResult2(String serialId,String status,String buyName,Date beginTime,Date endTime,Integer page,Integer rows){
		
		EsayUIDatagridResult result = settleServiceC.querySettleSerial(serialId,status,buyName,beginTime,endTime,page,rows);
		 
		
		return result;
	}
}
