package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployArea;

public class DeployAreaRespone implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 915681478715149530L;
	
	private List<DeployArea> deployAreas;

	public List<DeployArea> getDeployAreas() {
		return deployAreas;
	}
	
	public void setDeployAreas(List<DeployArea> deployAreas) {
		this.deployAreas = deployAreas;
	}
}
