/**
 * 
 */
package com.itoystergold.utils;

import java.io.Serializable;
import java.util.List;

/** 
* @Title: EsayUIDatagridResult 
* @Package com.amaz.e3mall.common.pojo
* @Description: TODO(用一句话描述该文件做什么) 
* @author 伦 
* @date 2017年12月19日
* @version V1.0  
*/
public class EsayUIDatagridResult implements Serializable {
	
	private long total;
	private List rows;
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
}

