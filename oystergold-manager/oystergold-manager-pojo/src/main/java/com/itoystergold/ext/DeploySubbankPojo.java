package com.itoystergold.ext;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeploySubbank;

public class DeploySubbankPojo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8566956357698337814L;
	
	private List<DeploySubbank> deplySubbank;

	public List<DeploySubbank> getDeplySubbank() {
		return deplySubbank;
	}

	public void setDeplySubbank(List<DeploySubbank> deplySubbank) {
		this.deplySubbank = deplySubbank;
	}
	
	

}
