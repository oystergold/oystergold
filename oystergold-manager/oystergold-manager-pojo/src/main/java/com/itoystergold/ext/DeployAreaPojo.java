package com.itoystergold.ext;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployArea;

public class DeployAreaPojo implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 5520154769450821861L;
	
	private List<DeployArea> deployAreas;

	public List<DeployArea> getDeployAreas() {
		return deployAreas;
	}
	
	public void setDeployAreas(List<DeployArea> deployAreas) {
		this.deployAreas = deployAreas;
	}
}
