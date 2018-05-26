package com.itoystergold.dao.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.ItemDao;
import com.itoystergold.mapper.TbItemMapper;
import com.itoystergold.pojo.TbItem;

@Repository
public class ItemDaoImpl implements ItemDao {

	@Autowired
	private TbItemMapper tbItemMapper;
	
	@Override
	public void addone(TbItem item) {
		item.setCreated(new Date());
		item.setUpdated(new Date());
		try {
			tbItemMapper.insert(item);
		} catch (Exception e) {
			throw new RuntimeException("数据库插入异常");
		}
	}

}
