package com.itoystergold.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.enums.EnumResponseType;
import com.itoystergold.facade.SettleFacade;
import com.itoystergold.request.SettleSerialRequest;
import com.itoystergold.respone.SettleSerialRespone;
import com.itoystergold.service.SettleServiceC;
import com.itoystergold.utils.EsayUIDatagridResult;


@Service
public class SettleServiceClient implements SettleServiceC {
	
	@Autowired
	private SettleFacade settleFacde;

	@Override
	public EsayUIDatagridResult  querySettleSerial(String serialId, String status, String buyName, Date beginTime,
			Date endTime,Integer page,Integer row) {
		
		OysterPageRequest pageRequest = new OysterPageRequest();
		
		pageRequest.setStart(page);
		
		pageRequest.setPageSize(row);
		
		SettleSerialRequest request = new SettleSerialRequest();
		request.setSerialId(serialId);
		request.setStatus(status);
		request.setBuyName(buyName);
		request.setBeginTime(beginTime);
		request.setEndTime(endTime);
		
		OysterPageResponse<SettleSerialRespone> response = settleFacde.querySettleSerial(pageRequest,request);
		EsayUIDatagridResult reslut = new EsayUIDatagridResult();
		if (EnumResponseType.SUCCESS.getCode().equals(response.getResponseType().getCode())) {
			if (response.getReturnObject().getSettleSerialPojos() !=null) {
				reslut.setTotal(response.getTotalCount());
				reslut.setRows(response.getReturnObject().getSettleSerialPojos());
			}
		}
		
		return reslut;
	}

}
