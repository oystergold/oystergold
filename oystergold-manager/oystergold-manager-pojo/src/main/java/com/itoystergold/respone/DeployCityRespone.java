package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeployCity;

public class DeployCityRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8222514782838588847L;
	private List<DeployCity> deplyCities;

	public List<DeployCity> getDeplyCities() {
		return deplyCities;
	}

	public void setDeplyCities(List<DeployCity> deplyCities) {
		this.deplyCities = deplyCities;
	}
	
	

}
