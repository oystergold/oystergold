package com.itoystergold.facade;

import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.request.SettleSerialRequest;
import com.itoystergold.respone.SettleSerialRespone;

public interface SettleFacade {

	OysterPageResponse<SettleSerialRespone> querySettleSerial(OysterPageRequest pageRequest,
			SettleSerialRequest request);

}
