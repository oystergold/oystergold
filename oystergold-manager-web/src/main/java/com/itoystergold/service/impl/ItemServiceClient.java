package com.itoystergold.service.impl;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.ItemPojo;
import com.itoystergold.facade.ItemFacade;
import com.itoystergold.request.ItemRequest;
import com.itoystergold.service.ItemServiceC;

@Service
public class ItemServiceClient implements ItemServiceC {
	
	@Autowired
	private ItemFacade itemFacade;
	
	@Override
	public void insertItem(ItemPojo item, String desc) {
		ItemRequest request = new ItemRequest();
		BeanUtils.copyProperties(item, request);
		
	OysterResponse<Void> response =	itemFacade.insertItem(request);
		
	}

}
