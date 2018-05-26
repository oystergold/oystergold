package com.itoystergold.request;

import java.io.Serializable;
import java.util.Date;

public class VipuserRequest implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 254393501652682369L;

    private String vid;

    private String parentid;

    private String vname;

    private String vusername;

    private String vtelephone;

    private String vlevel;

    private String vpassword;

    private String vcode;

    private String vstatus;

    private Date createtime;

    private Date updatetime;
    
    private String vcardno;

    private String bankid;

    private String bankaddress;

    private String vaddress;

    private Date infoCreatetime;

    private Date infoUpdatetime;

    private String email;

	public String getVid() {
		return vid;
	}

	public void setVid(String vid) {
		this.vid = vid;
	}

	public String getParentid() {
		return parentid;
	}

	public void setParentid(String parentid) {
		this.parentid = parentid;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}

	public String getVusername() {
		return vusername;
	}

	public void setVusername(String vusername) {
		this.vusername = vusername;
	}

	public String getVtelephone() {
		return vtelephone;
	}

	public void setVtelephone(String vtelephone) {
		this.vtelephone = vtelephone;
	}

	public String getVlevel() {
		return vlevel;
	}

	public void setVlevel(String vlevel) {
		this.vlevel = vlevel;
	}

	public String getVpassword() {
		return vpassword;
	}

	public void setVpassword(String vpassword) {
		this.vpassword = vpassword;
	}

	public String getVcode() {
		return vcode;
	}

	public void setVcode(String vcode) {
		this.vcode = vcode;
	}

	public String getVstatus() {
		return vstatus;
	}

	public void setVstatus(String vstatus) {
		this.vstatus = vstatus;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getVcardno() {
		return vcardno;
	}

	public void setVcardno(String vcardno) {
		this.vcardno = vcardno;
	}

	public String getBankid() {
		return bankid;
	}

	public void setBankid(String bankid) {
		this.bankid = bankid;
	}

	public String getBankaddress() {
		return bankaddress;
	}

	public void setBankaddress(String bankaddress) {
		this.bankaddress = bankaddress;
	}

	public String getVaddress() {
		return vaddress;
	}

	public void setVaddress(String vaddress) {
		this.vaddress = vaddress;
	}

	public Date getInfoCreatetime() {
		return infoCreatetime;
	}

	public void setInfoCreatetime(Date infoCreatetime) {
		this.infoCreatetime = infoCreatetime;
	}

	public Date getInfoUpdatetime() {
		return infoUpdatetime;
	}

	public void setInfoUpdatetime(Date infoUpdatetime) {
		this.infoUpdatetime = infoUpdatetime;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
