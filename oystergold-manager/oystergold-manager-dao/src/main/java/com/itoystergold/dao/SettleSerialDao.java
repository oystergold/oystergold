package com.itoystergold.dao;

import java.util.Date;
import java.util.List;

import com.github.pagehelper.PageInfo;
import com.itoystergold.pojo.AssetSettleSerial;
import com.itoystergold.pojo.Order;

public interface SettleSerialDao {

	PageInfo<AssetSettleSerial> queryList(String serialId, String status, Date beginTime, Date endTime, long start, int pageSize);

}
