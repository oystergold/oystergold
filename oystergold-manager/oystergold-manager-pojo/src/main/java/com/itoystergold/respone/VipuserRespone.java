package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.ext.VipuserPojo;

public class VipuserRespone implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7863805756473934421L;

    private	List<VipuserPojo> vipusers ;
    
    private VipuserPojo vipuserPojo;

	public List<VipuserPojo> getVipusers() {
		return vipusers;
	}

	public void setvipusers(List<VipuserPojo> vipusers) {
		this.vipusers = vipusers;
	}

	public VipuserPojo getVipuserPojo() {
		return vipuserPojo;
	}

	public void setVipuserPojo(VipuserPojo vipuserPojo) {
		this.vipuserPojo = vipuserPojo;
	}
	
}
