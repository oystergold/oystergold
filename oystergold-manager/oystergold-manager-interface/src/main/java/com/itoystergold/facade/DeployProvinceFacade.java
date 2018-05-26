package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeployProvincePojo;

public interface DeployProvinceFacade {

	OysterResponse<DeployProvincePojo> selectProvinces();
}
