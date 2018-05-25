/**
 * hsjry.com Inc.
 * Copyright (c) 2014-2016 All Rights Reserved.
 **/
package com.itoystergold.common;

import java.io.Serializable;
import java.util.Date;

import com.itoystergold.enums.EnumResponseType;


/**
 * 
 * 
 * @author jiaowl
 * @version $Id: HsjryResponse.java, v 0.1 2016-11-18 下午12:59:39 jiaowl Exp $
 */
public class OysterPageResponse<T> extends OysterPageRequest implements Serializable  {
    /**  */
    private static final long serialVersionUID = -414263559067078799L;
    
    /** 返回错误码*/
    private String respCode;
    /** 返回错误信息*/
    private String respMsg;
    /** 返回类型（必须）*/
    private EnumResponseType responseType;
    /**返回日期时间*/
    private Date returnDate;
    /**返回对象*/
    private T returnObject;
    
    public String getRespCode() {
        return respCode;
    }
    public void setRespCode(String respCode) {
        this.respCode = respCode;
    }
    public String getRespMsg() {
        return respMsg;
    }
    public void setRespMsg(String respMsg) {
        this.respMsg = respMsg;
    }
    public EnumResponseType getResponseType() {
        return responseType;
    }
    public void setResponseType(EnumResponseType responseType) {
        this.responseType = responseType;
    }
    public Date getReturnDate() {
        return returnDate;
    }
    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }
    public T getReturnObject() {
        return returnObject;
    }
    public void setReturnObject(T returnObject) {
        this.returnObject = returnObject;
    }
    
    
}
