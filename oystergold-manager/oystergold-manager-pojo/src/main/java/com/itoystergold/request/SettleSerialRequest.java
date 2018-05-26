package com.itoystergold.request;

import java.io.Serializable;
import java.util.Date;

public class SettleSerialRequest implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6179475966289499866L;

	
	private String serialId; 
	
	private String status; 
	
	private String buyName; 
	
	private Date beginTime;
	
	private Date endTime;

	public String getSerialId() {
		return serialId;
	}

	public void setSerialId(String serialId) {
		this.serialId = serialId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBuyName() {
		return buyName;
	}

	public void setBuyName(String buyName) {
		this.buyName = buyName;
	}

	public Date getBeginTime() {
		return beginTime;
	}

	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
	
}
