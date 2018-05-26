package com.itoystergold.service.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.github.pagehelper.PageInfo;
import com.itoystergold.dao.OderDao;
import com.itoystergold.dao.SettleSerialDao;
import com.itoystergold.ext.SettleSerialPojo;
import com.itoystergold.pojo.AssetSettleSerial;
import com.itoystergold.pojo.Order;
import com.itoystergold.request.SettleSerialRequest;
import com.itoystergold.service.SettleSerialSerivce;
import com.itoystergold.utils.Page;

@Service
public class SettleSerialSerivceImpl implements SettleSerialSerivce {
	
//	@Autowired
//	private OderDao oderDao;
	
	@Autowired
	private SettleSerialDao settleSerialDao;
	
	@Override
	public Page<SettleSerialPojo> querySettleSerial(long start, int pageSize, SettleSerialRequest request) {
		
		
		PageInfo<AssetSettleSerial> pageInfo = settleSerialDao.queryList(request.getSerialId(),request.getStatus(),request.getBeginTime(),request.getEndTime(),start,pageSize);
		
		
		List<SettleSerialPojo> serialPojos = new ArrayList<SettleSerialPojo>();
		for (AssetSettleSerial assetSettleSerial : pageInfo.getList()) {
			SettleSerialPojo pojo = new SettleSerialPojo();
			pojo.setSerialId(assetSettleSerial.getSerialid());
			pojo.setSid(assetSettleSerial.getSid());
			pojo.setStatus(assetSettleSerial.getHandlerStatus());
			pojo.setCreatTime(assetSettleSerial.getCreatetime());
			
			String requestParam = assetSettleSerial.getRequestParam();
			List<Order> orders = JSONArray.parseArray(requestParam, Order.class);
			BigDecimal amt = new BigDecimal(0);
			for (Order order : orders) {
				amt = amt.add(order.getPayment());
			}
			pojo.setAmt(amt);
			pojo.setOid(orders.get(0).getOrderId());
			pojo.setBuy_name(orders.get(0).getBuyerName());
			
			serialPojos.add(pojo);
		}
		Page< SettleSerialPojo> page = new Page<>();
		
		page.setResults(serialPojos);
		page.setPageNo((int)start);
		page.setPageSize(pageInfo.getSize());
		page.setTotalPage(pageInfo.getPages());
		page.setTotalRecord((int)pageInfo.getTotal());
		
		
		
		return page;
	}

}
