package com.itoystergold.request;

import java.io.Serializable;

public class DeployCityRequest implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6646276402317221425L;

	private String provinceCode;

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}
	
	
}
