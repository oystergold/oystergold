package com.itoystergold.facade.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.ext.SettleSerialPojo;
import com.itoystergold.facade.SettleFacade;
import com.itoystergold.request.SettleSerialRequest;
import com.itoystergold.respone.SettleSerialRespone;
import com.itoystergold.service.SettleSerialSerivce;
import com.itoystergold.utils.Page;
import com.itoystergold.utils.ResultUtils;

@Service
public class SettleFacadeImpl implements SettleFacade {
	
	@Autowired
	private SettleSerialSerivce settleSerialService;
	
	@Override
	public OysterPageResponse<SettleSerialRespone> querySettleSerial(OysterPageRequest pageRequest,
			SettleSerialRequest request) {
		 Page<SettleSerialPojo> page = settleSerialService.querySettleSerial(pageRequest.getStart(),pageRequest.getPageSize(),request);
		 SettleSerialRespone respone = new SettleSerialRespone();
		 respone.setSettleSerialPojos(page.getResults());
		 pageRequest.setTotalCount(page.getTotalRecord());
		 
		return ResultUtils.getSuccessPageResponse(respone, pageRequest);
	}

}
