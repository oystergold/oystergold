/**
 * hsjry.com Inc.
 * Copyright (c) 2014-2015 All Rights Reserved.
 */
package com.itoystergold.common;

import net.sf.oval.constraint.Min;

import java.io.Serializable;

/**
 * ��ҳ����2,��Ϸ�ʽ��ҳ����
 *
 * @author jiaowl
 * @version $Id: HsjryPageRequest.java, v 0.1 2015-11-13 ����11:51:24 jiaowl Exp $
 */
public class OysterPageRequest  implements Serializable {
    /**  */
    private static final long serialVersionUID = 9219155992712895723L;

    private static int DEFAULT_PAGE_SIZE = 20;
    
    private int pageSize = DEFAULT_PAGE_SIZE;


    private long start;

    private long totalCount; //

    public OysterPageRequest() {
    }

    /**
     * Setter method for property <tt>totalCount</tt>.
     *
     * @param totalCount value to be assigned to property totalCount
     */
    public void setTotalCount(long totalCount) {
        this.totalCount = totalCount;
    }

    
    public OysterPageRequest(long start) {
        this(start, 0, DEFAULT_PAGE_SIZE);
    }

   
    public OysterPageRequest(long start, int pageSize) {
        this(start, 0, pageSize);
    }

   
    public OysterPageRequest(long start, long totalSize, int pageSize) {
        this.pageSize = pageSize;
        this.start = start;
        this.totalCount = totalSize;
    }

   
    public long getTotalCount() {
        return this.totalCount;
    }

   
    public long getTotalPageCount() {
        if (pageSize <= 0) {
            return 0;
        }
        return (totalCount + pageSize - 1) / pageSize;
    }

    
    public int getPageSize() {
        return pageSize;
    }


   
    public int getCurrentPageNo() {
        return (int) (start / pageSize + 1);
    }

    
    public boolean hasNextPage() {
        return this.getCurrentPageNo() < this.getTotalPageCount();
    }

    
    public boolean hasPreviousPage() {
        return this.getCurrentPageNo() > 1;
    }

   
    protected static int getStartOfPage(int pageNo) {
        return getStartOfPage(pageNo, DEFAULT_PAGE_SIZE);
    }

   
    public static int getStartOfPage(int pageNo, int pageSize) {
        return (pageNo - 1) * pageSize;
    }

    /**
     * Getter method for property <tt>start</tt>.
     *
     * @return property value of start
     */
    public long getStart() {
        return start;
    }

    /**
     * Setter method for property <tt>pageSize</tt>.
     *
     * @param pageSize value to be assigned to property pageSize
     */
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    /**
     * Setter method for property <tt>start</tt>.
     *
     * @param start value to be assigned to property start
     */
    public void setStart(long start) {
        this.start = start;
    }

}

