package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployProvince;

public class DeployProvinceRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2038546671809080779L;
	private List<DeployProvince> deployProvinces;

	public List<DeployProvince> getDeployProvinces() {
		return deployProvinces;
	}

	public void setDeployProvinces(List<DeployProvince> deployProvinces) {
		this.deployProvinces = deployProvinces;
	}
	
	

}
