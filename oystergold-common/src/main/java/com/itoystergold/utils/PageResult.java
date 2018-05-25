/**
 * hsjry.com Inc.
 * Copyright (c) 2014-2017 All Rights Reserved.
 */
package com.itoystergold.utils;

import java.util.List;

/**
 * @author shenly13343
 * @version $Id: PageResult.java, v 0.1 2017/10/26 12:50 shenly13343 Exp $
 */
public class PageResult<T> {

    long totalNum;

    private List<T> resultList;

    public long getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(long totalNum) {
        this.totalNum = totalNum;
    }

    public List<T> getResultList() {
        return resultList;
    }

    public void setResultList(List<T> resultList) {
        this.resultList = resultList;
    }
}
