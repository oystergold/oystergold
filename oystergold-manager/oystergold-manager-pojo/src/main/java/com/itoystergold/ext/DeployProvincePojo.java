package com.itoystergold.ext;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployProvince;

public class DeployProvincePojo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6612573294955044037L;
	
	private List<DeployProvince> deployProvinces;

	public List<DeployProvince> getDeployProvinces() {
		return deployProvinces;
	}

	public void setDeployProvinces(List<DeployProvince> deployProvinces) {
		this.deployProvinces = deployProvinces;
	}
	
	

}
