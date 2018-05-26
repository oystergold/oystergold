package com.itoystergold.service.impl;

import java.util.Date;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itoystergold.dao.ItemDao;
import com.itoystergold.enums.EnumItemStatus;
import com.itoystergold.pojo.TbItem;
import com.itoystergold.request.ItemRequest;
import com.itoystergold.service.ItemService;
import com.itoystergold.utils.UUIDUtil;

@Service
public class ItemServiceImpl implements ItemService {
	
	@Autowired
	private ItemDao itemDao;
	
	@Override
	@Transactional
	public void insertItem(ItemRequest request) {
		TbItem item = new TbItem();
		BeanUtils.copyProperties(request, item);
		item.setId(new Date().getTime());
		item.setStatus(Byte.valueOf(EnumItemStatus.SHSANG.getCode()));
		itemDao.addone(item);
	}

}
