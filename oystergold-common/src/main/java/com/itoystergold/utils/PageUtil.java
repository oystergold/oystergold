/**
 * hsjry.com Inc.
 * Copyright (c) 2014-2017 All Rights Reserved.
 */
package com.itoystergold.utils;


import java.beans.IntrospectionException;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/**
 * 分页工具
 *
 * @author hongsj
 * @version $Id: PageUtil.java, v 1.0 2017年3月21日 下午2:09:57 hongsj Exp $
 */
public class PageUtil {


    private PageUtil() {

    }

    /**
     * 获取当页数据
     *
     * @param partnerInfoBeans
     * @param start
     * @param pageSize
     * @return
     */
    public static <T> List<T> getPageList(List<T> partnerInfoBeans, int start, int pageSize) {
        //当前页的数据列表
        List<T> currentPageList = new ArrayList<T>();
        if (!CollectionUtils.isEmpty(partnerInfoBeans)) {
            //获取分页遍历结束节点
            int length = getPageEndSize(start + pageSize, partnerInfoBeans.size());
            if (start != -1 && pageSize != -1) {
                //设置分页中的列表,start为起始下标
                for (int i = start; i < length; i++) {
                    currentPageList.add(partnerInfoBeans.get(i));
                }
            } else {
                currentPageList = partnerInfoBeans;
            }
        }
        return currentPageList;
    }

    /**
     * 对列表中的数据按指定字段进行排序。要求类必须有相关的方法返回字符串、整型、日期等值以进行比较。
     *
     * @param <T>
     * @param list        需要排序的列表
     * @param property    排序属性名称
     * @param reverseFlag true倒序,false正序
     */
    public static <T> void sortByProperty(List<T> list, final String property,
                                          final boolean reverseFlag) {
        Collections.sort(list, new Comparator<T>() {
            public int compare(T arg1, T arg2) {
                int result = 0;
                try {
                    PropertyDescriptor pd1 = new PropertyDescriptor(property, arg1.getClass());
                    PropertyDescriptor pd2 = new PropertyDescriptor(property, arg2.getClass());
                    Method m1 = pd1.getReadMethod();//获得get方法  
                    Method m2 = pd2.getReadMethod();//获得get方法  
                    Object obj1 = m1.invoke(arg1);
                    Object obj2 = m2.invoke(arg2);
                    if (obj1 instanceof String) {
                        // 字符串
                        result = obj1.toString().compareTo(obj2.toString());
                    } else if (obj1 instanceof Date) {
                        // 日期
                        long l = ((Date) obj1).getTime() - ((Date) obj2).getTime();
                        if (l > 0) {
                            result = 1;
                        } else if (l < 0) {
                            result = -1;
                        } else {
                            result = 0;
                        }
                    } else if (obj1 instanceof Integer) {
                        result = (Integer) obj1 - (Integer) obj2;
                    } else {
                        result = obj1.toString().compareTo(obj2.toString());
                    }
                    if (reverseFlag) {
                        // 倒序
                        result = -result;
                    }
                } catch (IllegalAccessException iae) {
                } catch (InvocationTargetException ite) {
                } catch (IntrospectionException e) {
                }
                return result;
            }
        });
    }

    /**
     * 获取排序后的分页列表
     *
     * @param partnerInfoBeans
     * @param start
     * @param pageSize
     * @param property
     * @param reverseFlag
     * @return
     */
    public static <T> List<T> getSortPageList(List<T> partnerInfoBeans, int start, int pageSize,
                                              final String property, final boolean reverseFlag) {
        //当前页的数据列表
        List<T> currentPageList = new ArrayList<T>();
        if (!CollectionUtils.isEmpty(partnerInfoBeans)) {
            sortByProperty(partnerInfoBeans, property, reverseFlag);
            currentPageList = getPageList(partnerInfoBeans, start, pageSize);
        }
        return currentPageList;
    }

    private static int getPageEndSize(int count, int size) {
        return count < size ? count : size;
    }

}
