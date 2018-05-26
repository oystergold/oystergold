package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeployCityPojo;
import com.itoystergold.request.DeployCityRequest;

public interface DeployCityFacade {

	OysterResponse<DeployCityPojo> selectAreaByCityCode(DeployCityRequest request);
}
