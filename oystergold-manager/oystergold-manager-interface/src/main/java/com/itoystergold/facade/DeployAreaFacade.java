package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeployAreaPojo;
import com.itoystergold.request.DeployAreasRequest;

public interface DeployAreaFacade {

	OysterResponse<DeployAreaPojo> selectAreaByCityCode(DeployAreasRequest request);
}
