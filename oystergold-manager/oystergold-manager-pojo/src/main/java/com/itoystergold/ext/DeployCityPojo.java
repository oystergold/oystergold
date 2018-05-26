package com.itoystergold.ext;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployCity;

public class DeployCityPojo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 544631960143180618L;
	
	private List<DeployCity> deplyCities;

	public List<DeployCity> getDeplyCities() {
		return deplyCities;
	}

	public void setDeplyCities(List<DeployCity> deplyCities) {
		this.deplyCities = deplyCities;
	}
	
	

}
