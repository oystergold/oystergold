/**
 * 
 */
package com.itoystergold.utils;

import java.io.Serializable;

/** 
* @Title: EsayUITreeNode 
* @Package com.amaz.e3mall.common.pojo
* @Description: TODO(用一句话描述该文件做什么) 
* @author 伦 
* @date 2017年12月19日
* @version V1.0  
*/
public class EsayUITreeNode implements Serializable {
	
	private Long id;
	private String text;
	private String state;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
}

