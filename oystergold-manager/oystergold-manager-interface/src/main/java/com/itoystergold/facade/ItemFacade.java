package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.request.ItemRequest;

public interface ItemFacade {
	
	/**
	 * 
	 * 添加
	 * @param request
	 * @return
	 */
	OysterResponse<Void> insertItem(ItemRequest request);

}
