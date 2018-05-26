package com.itoystergold.facade;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.ext.DeployLevelPojo;

public interface DeployLevelFacade {

	OysterResponse<DeployLevelPojo> seleceLevels();
}
