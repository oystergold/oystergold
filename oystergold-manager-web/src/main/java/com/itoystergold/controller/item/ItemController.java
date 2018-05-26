package com.itoystergold.controller.item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itoystergold.ext.ItemPojo;
import com.itoystergold.pojo.TbItem;
import com.itoystergold.service.ItemServiceC;
import com.itoystergold.utils.E3Result;

@Controller
@RequestMapping("item")
public class ItemController {
	
	@Autowired
	private ItemServiceC itemServiceC;
	
	@RequestMapping("item/item_add")
	public String item_add(){
		return "item/item/item-add";
	}
	
	@RequestMapping("/save")
	@ResponseBody
	public E3Result addItem( ItemPojo item,String desc){
		
		try {
			itemServiceC.insertItem(item, desc);
			return E3Result.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return E3Result.build(500, "添加失败");
		}
	}
		
}
