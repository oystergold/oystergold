package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.ext.SettleSerialPojo;

public class SettleSerialRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1218137193517444633L;
	
	List<SettleSerialPojo> settleSerialPojos;

	public List<SettleSerialPojo> getSettleSerialPojos() {
		return settleSerialPojos;
	}

	public void setSettleSerialPojos(List<SettleSerialPojo> settleSerialPojos) {
		this.settleSerialPojos = settleSerialPojos;
	}
	
	
}
