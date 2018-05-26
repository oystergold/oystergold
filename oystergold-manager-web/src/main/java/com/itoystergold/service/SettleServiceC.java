package com.itoystergold.service;

import java.util.Date;

import com.itoystergold.ext.SettleSerialPojo;
import com.itoystergold.utils.EsayUIDatagridResult;
import com.itoystergold.utils.Page;

public interface SettleServiceC {

	/**
	 * 通用查询
	 * @param serialId
	 * @param status
	 * @param buyName
	 * @param beginTime
	 * @param endTime
	 * @param row 
	 * @param page 
	 * @return
	 */
	EsayUIDatagridResult querySettleSerial(String serialId, String status, String buyName, Date beginTime, Date endTime, Integer page, Integer row);

}
