package com.itoystergold.ext;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class SettleSerialPojo implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1929283038630946166L;

	private String sid;
	
	/**
	 * 流水号
	 */
	private String serialId;
	
	
	/**
	 * 订单id
	 */
	private String oid;
	
	/**
	 * 状态
	 */
	private String status;
	
	/**
	 * 结算金额
	 */
	private BigDecimal amt;
	
	/**
	 * 订单姓名
	 */
	private String buy_name;
	
	
	/**
	 * 创建时间
	 */
	private Date creatTime;


	public String getSid() {
		return sid;
	}


	public void setSid(String sid) {
		this.sid = sid;
	}


	public String getSerialId() {
		return serialId;
	}


	public void setSerialId(String serialId) {
		this.serialId = serialId;
	}


	public String getOid() {
		return oid;
	}


	public void setOid(String oid) {
		this.oid = oid;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public BigDecimal getAmt() {
		return amt;
	}


	public void setAmt(BigDecimal amt) {
		this.amt = amt;
	}


	public String getBuy_name() {
		return buy_name;
	}


	public void setBuy_name(String buy_name) {
		this.buy_name = buy_name;
	}


	public Date getCreatTime() {
		return creatTime;
	}


	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
	}
	
	
}
