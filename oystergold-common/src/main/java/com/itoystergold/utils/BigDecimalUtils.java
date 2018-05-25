/**
 * hsjry.com Inc.
 * Copyright (c) 2014-2017 All Rights Reserved.
 */
package com.itoystergold.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;

/**
 * 金额工具类
 *
 * @author shenly13343
 * @version $Id: BigDecimalUtils.java, v 0.1 2017/4/7 14:17 shenly13343 Exp $
 */
public class BigDecimalUtils {
    public static BigDecimal getBigDecimal(String num) {
        return num == null ? BigDecimal.ZERO : new BigDecimal(num);
    }

    public static BigDecimal getBigDecimal(Integer num) {
        return num == null ? BigDecimal.ZERO : new BigDecimal(num);
    }

    public static BigDecimal getBigDecimal(BigDecimal num) {
        return num == null ? BigDecimal.ZERO : new BigDecimal(num.toString());
    }

    /**
     * 累加所有金额，null视为0
     *
     * @param bigDecimals
     * @return
     */
    public static BigDecimal getTotal(BigDecimal... bigDecimals) {
        BigDecimal result = BigDecimal.ZERO;
        for (BigDecimal amt : bigDecimals) {
            result = result.add(getBigDecimal(amt));
        }
        return result;
    }

    /**
     * 和0比较
     *
     * @param par
     * @return
     */
    public static int compareZero(BigDecimal par) {
        if (par == null) {
            return 0;
        } else {
            return par.compareTo(BigDecimal.ZERO);
        }
    }

    /**
     * 适应云融惠付金额字段，保留2位
     *
     * @param amt
     * @return
     */
    public static String yrhfFormatAmt(BigDecimal amt) {
        BigDecimal bigDecimal = getBigDecimal(amt);
        bigDecimal = bigDecimal.setScale(2, BigDecimal.ROUND_DOWN);
        return bigDecimal.toString();
    }

    /**
     * 适应云融惠付金额字段，保留2位
     *
     * @param amt
     * @return
     */
    public static BigDecimal convertFormatAmt(BigDecimal amt) {
        BigDecimal bigDecimal = getBigDecimal(amt);
        bigDecimal = bigDecimal.setScale(2, BigDecimal.ROUND_DOWN);
        return getBigDecimal(bigDecimal.stripTrailingZeros().toPlainString());
    }

    /**
     * 网商银行金额类字段需要格式为15的字符
     * 消费币种的最小货币单位（分），金额不足15位前补0，如金额为15.00，则000000000001500
     *
     * @param amt
     * @return
     */
    public static String ebusNumberFormat(BigDecimal amt) {
        return numberFormat(amt.multiply(new BigDecimal(100)), "000000000000000");
    }

    /**
     * 数字格式化
     *
     * @param number
     * @param pattern
     * @return
     */
    public static String numberFormat(BigDecimal number, String pattern) {
        DecimalFormat instance = new DecimalFormat(pattern);
        return instance.format(number);
    }

    /**
     * 数字格式化
     *
     * @param number
     * @param pattern
     * @return
     */
    public static String numberFormat(int number, String pattern) {
        DecimalFormat instance = new DecimalFormat(pattern);
        return instance.format(number);
    }
}
