package com.itoystergold.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.enums.EnumResponseType;
import com.itoystergold.facade.VipuserFacade;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.VipuserRespone;
import com.itoystergold.service.VipuserServiceC;
import com.itoystergold.utils.EsayUIDatagridResult;

@Service
public class VipuserServiceClient implements VipuserServiceC{

	@Autowired
	private VipuserFacade vipuserFacade;
	
	@Override
	public EsayUIDatagridResult vipuserList(String vname, String phoneNo, String vlevel, String vstatus, Integer page,Integer rows) {
		
		OysterPageRequest pageRequest = new OysterPageRequest();
		pageRequest.setStart(page);
		pageRequest.setPageSize(rows);
		VipuserRequest request = new VipuserRequest();
		request.setVname(vname);
		request.setVtelephone(phoneNo);
		request.setVlevel(vlevel);
		request.setVstatus(vstatus);
		OysterPageResponse<VipuserRespone> response = vipuserFacade.selectVipusers(pageRequest,request);
		
		EsayUIDatagridResult reslut = new EsayUIDatagridResult();
		if(EnumResponseType.SUCCESS.getCode().equals(response.getResponseType().getCode())) {
			if (response.getReturnObject().getVipusers() !=null) {
				reslut.setTotal(response.getTotalCount());
				reslut.setRows(response.getReturnObject().getVipusers());
			}
		}
		
		return reslut;
	}

}
