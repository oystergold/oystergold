package com.itoystergold.respone;

import java.io.Serializable;
import java.util.List;

import com.itoystergold.ext.UserPojo;

public class UserRespone implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7820335793661074272L;
	
    private	List<UserPojo> users ;

	public List<UserPojo> getUsers() {
		return users;
	}

	public void setUsers(List<UserPojo> users) {
		this.users = users;
	}
    

}
