package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeploySubbankPojo;
import com.itoystergold.request.DeploySubbankRequest;

public interface DeploySubbankFacade {

	OysterResponse<DeploySubbankPojo> selectSubbankByCityCodeAndBankNo(DeploySubbankRequest request);
}
