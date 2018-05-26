package com.itoystergold.request;

import java.io.Serializable;

public class DeploySubbankRequest implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3149994741293708361L;

	private String cityCode;
	private String bankNo;
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	public String getBankNo() {
		return bankNo;
	}
	public void setBankNo(String bankNo) {
		this.bankNo = bankNo;
	}
	
	
}
