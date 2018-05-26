package com.itoystergold.ext;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployLevel;

public class DeployLevelPojo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1002148879155073511L;
	
	private List<DeployLevel> deployLevels;

	public List<DeployLevel> getDeployLevels() {
		return deployLevels;
	}

	public void setDeployLevels(List<DeployLevel> deployLevels) {
		this.deployLevels = deployLevels;
	}
	
	

}
