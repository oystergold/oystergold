package com.itoystergold.facade.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.facade.ItemFacade;
import com.itoystergold.request.ItemRequest;
import com.itoystergold.service.ItemService;
import com.itoystergold.utils.ResultUtils;

@Service
public class ItemFacadeImpl implements ItemFacade {
	
	@Autowired
	private ItemService itemService;
	
	@Override
	public OysterResponse<Void> insertItem(ItemRequest request) {
		
		itemService.insertItem(request);
		
		return ResultUtils.getSuccessResponse(null);
	}

}
