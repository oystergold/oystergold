package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.pojo.DeploySubbank;

public class DeploySubbankRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6793590934990623251L;
	
	private List<DeploySubbank> deplySubbank;

	public List<DeploySubbank> getDeplySubbank() {
		return deplySubbank;
	}

	public void setDeplySubbank(List<DeploySubbank> deplySubbank) {
		this.deplySubbank = deplySubbank;
	}
	
	

}
