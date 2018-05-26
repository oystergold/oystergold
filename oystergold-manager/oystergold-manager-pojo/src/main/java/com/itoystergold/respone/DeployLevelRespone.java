package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployLevel;

public class DeployLevelRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6787129489725198883L;
	
	private List<DeployLevel> deployLevels;

	public List<DeployLevel> getDeployLevels() {
		return deployLevels;
	}

	public void setDeployLevels(List<DeployLevel> deployLevels) {
		this.deployLevels = deployLevels;
	}
	
	

}
