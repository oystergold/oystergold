package com.itoystergold.request;

import java.io.Serializable;

public class DeployAreasRequest implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7106579241691529765L;

	private String cityCode;

	public String getCityCode() {
		return cityCode;
	}

	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	
}
