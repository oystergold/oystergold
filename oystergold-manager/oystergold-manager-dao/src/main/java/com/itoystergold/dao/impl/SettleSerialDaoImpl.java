package com.itoystergold.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.itoystergold.dao.SettleSerialDao;
import com.itoystergold.mapper.AssetSettleSerialMapper;
import com.itoystergold.pojo.AssetSettleSerial;
import com.itoystergold.pojo.AssetSettleSerialExample;
import com.itoystergold.pojo.AssetSettleSerialExample.Criteria;

@Repository
public class SettleSerialDaoImpl implements SettleSerialDao {
	
	@Autowired
	private AssetSettleSerialMapper assetSettleSerialMapper;

	@Override
	public PageInfo<AssetSettleSerial> queryList(String serialId, String status, Date beginTime, Date endTime, long page,int rows) {

		PageHelper.startPage((int)page, rows);
		
		AssetSettleSerialExample example = new AssetSettleSerialExample();
		Criteria criteria = example.createCriteria();
		
		if (!StringUtils.isEmpty(status)) {
			criteria.andHandlerStatusEqualTo(status);
		}
		if (beginTime != null) {
			criteria.andCreatetimeGreaterThanOrEqualTo(beginTime);
		}
		if (endTime != null) {
			criteria.andCreatetimeLessThanOrEqualTo(endTime);
		}
		
		try {
			List<AssetSettleSerial> list = assetSettleSerialMapper.selectByExample(example);
			PageInfo<AssetSettleSerial> pageInfo = new PageInfo<>(list);
			return pageInfo;
		} catch (Exception e) {
			throw new RuntimeException("数据库查询失败");
		}

	}

}
