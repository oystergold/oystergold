//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtil {
    public static final String[] months = new String[]{"一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"};
    public static final String[] quarters = new String[]{"一季度", "二季度", "三季度", "四季度"};

    public DateUtil() {
    }

    public static String getCurrentDateStr() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        return formatter.format(new Date());
    }

    public static String getDate() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        return formatter.format(new Date());
    }

    public static String getNowYear() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy");
        return formatter.format(new Date());
    }

    public static String getNowMonth() {
        SimpleDateFormat formatter = new SimpleDateFormat("MM");
        return formatter.format(new Date());
    }

    public static String getNowDay() {
        SimpleDateFormat formatter = new SimpleDateFormat("dd");
        return formatter.format(new Date());
    }

    public static String getDate(Date date, String format) {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.format(date);
    }

    public static String getDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        return formatter.format(date);
    }

    public static Date getDate(String dateStr) {
        SimpleDateFormat df;
        Date date;
        if (isDate(dateStr)) {
            df = new SimpleDateFormat("yyyyMMdd");

            try {
                date = df.parse(dateStr);
                return date;
            } catch (Exception var3) {
                return null;
            }
        } else if (isDateTime(dateStr)) {
            df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

            try {
                date = df.parse(dateStr);
                return date;
            } catch (Exception var4) {
                return null;
            }
        } else {
            return null;
        }
    }

    public static Date getDate(String dateStr, String pattern) {
        if (isDateTime(dateStr, pattern)) {
            SimpleDateFormat df = new SimpleDateFormat(pattern);

            try {
                Date date = df.parse(dateStr);
                return date;
            } catch (Exception var4) {
                return null;
            }
        } else {
            return null;
        }
    }

    public static String getHyphenDate() {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        return formatter.format(new Date());
    }

    public static String getHyphenDate(Date date) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        return formatter.format(date);
    }

    public static Date parsePlainDate(String source) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        return sdf.parse(source, new ParsePosition(0));
    }

    public static Date parseHyphenDate(String source) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.parse(source, new ParsePosition(0));
    }

    public static Date parseDate(String source, String pattern) {
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        return sdf.parse(source, new ParsePosition(0));
    }

    public static String toPlainDate(String source) {
        Date date = parseHyphenDate(source);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
        return formatter.format(date);
    }

    public static String toHyphenDate(String source) {
        Date date = parsePlainDate(source);
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        return formatter.format(date);
    }

    public static Timestamp getTimestamp(Date date) {
        return new Timestamp(date.getTime());
    }

    public static Timestamp getTimestamp() {
        return new Timestamp((new Date()).getTime());
    }

    public static Timestamp parseTimestamp(String source) {
        Date date = parsePlainDate(source);
        return getTimestamp(date);
    }

    public static String getPeriodYear(String source, int yearPeriod) {
        int p = Integer.parseInt(source.substring(0, 4)) + yearPeriod;
        String newYear = p + source.substring(4, source.length());
        Date date = parsePlainDate(newYear);
        String s = getDate(date);
        int ny = Integer.parseInt(s);

        int sy;
        for(sy = Integer.parseInt(newYear); ny > sy; ny = Integer.parseInt(getDate(parsePlainDate(String.valueOf(sy))))) {
            --sy;
        }

        return String.valueOf(sy);
    }

    public static String addDate(int day) {
        Calendar c = Calendar.getInstance();
        c.setTimeInMillis(System.currentTimeMillis() + (long)day * 24L * 3600L * 1000L);
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
        return df.format(c.getTime());
    }

    public static Date dateReduceMonth(Date now, int month) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(2, month * -1);
        return calendar.getTime();
    }

    public static Date dateReduceDay(Date now, int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(5, day * -1);
        return calendar.getTime();
    }

    public static Date dateReduceYear(Date now, int year) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(1, year * -1);
        return calendar.getTime();
    }

    public static Date dateAddMonth(Date now, int month) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(2, month);
        return calendar.getTime();
    }

    public static Date dateAddYear(Date now, int year) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(1, year);
        return calendar.getTime();
    }

    public static Date dateAddDay(Date now, int day) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(now);
        calendar.add(5, day);
        return calendar.getTime();
    }

    public static Date dateAddDate(String datestr, int day) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date olddate = null;

        try {
            df.setLenient(false);
            olddate = new java.sql.Date(df.parse(datestr).getTime());
        } catch (ParseException var9) {
            throw new RuntimeException("日期转换错误");
        }

        Calendar cal = new GregorianCalendar();
        cal.setTime(olddate);
        int Year = cal.get(1);
        int Month = cal.get(2);
        int Day = cal.get(5);
        int NewDay = Day + day;
        cal.set(1, Year);
        cal.set(2, Month);
        cal.set(5, NewDay);
        return new Date(cal.getTimeInMillis());
    }

    public static String timeStamp2Date(String seconds, String format) {
        if (seconds != null && !seconds.isEmpty() && !seconds.equals("null")) {
            if (format == null || format.isEmpty()) {
                format = "yyyy-MM-dd HH:mm:ss";
            }

            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return sdf.format(new Date(Long.valueOf(seconds + "000").longValue()));
        } else {
            return "";
        }
    }

    public static String date2TimeStamp(String date, String format) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat(format);
            return String.valueOf(sdf.parse(date).getTime() / 1000L);
        } catch (Exception var3) {
            var3.printStackTrace();
            return "";
        }
    }

    public static String timeStamp() {
        long time = System.currentTimeMillis();
        String t = String.valueOf(time / 1000L);
        return t;
    }

    public static long getMillis(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.getTimeInMillis();
    }

    public static String getNowDate(String format) {
        Date date = new Date();
        String str = null;
        SimpleDateFormat df = new SimpleDateFormat(format);
        str = df.format(date);
        return str;
    }

    public static String getTimeStr(String dateStr) throws Exception {
        Date date = getDate(dateStr);
        String str = null;
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
        str = df.format(date);
        return str;
    }

    public static String getTimeStr6(Date date) throws Exception {
        SimpleDateFormat df = new SimpleDateFormat("HHmmss");
        String str = df.format(date);
        return str;
    }

    public static String getTimeStr6() {
        String str = "";
        SimpleDateFormat df = new SimpleDateFormat("HHmmss");
        str = df.format(new Date());
        return str;
    }

    public static Date addDateMinut(Date day, int x) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(day);
        cal.add(12, x);
        day = cal.getTime();
        cal = null;
        return day;
    }

    public static String reduceDateMinut(Date day, int x) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar cal = Calendar.getInstance();
        cal.setTime(day);
        cal.add(12, -x);
        day = cal.getTime();
        cal = null;
        return format.format(day);
    }

    public static String getTimeStr() {
        String str = "";
        SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");
        str = df.format(new Date());
        return str;
    }

    public static boolean isDateTime(String str) {
        return isDateTime(str, "yyyy-MM-dd HH:mm:ss.SSS");
    }

    public static boolean isDateTime(String str, String pattern) {
        boolean convertSuccess = true;
        SimpleDateFormat format = new SimpleDateFormat(pattern);

        try {
            format.setLenient(false);
            format.parse(str);
        } catch (Exception var5) {
            convertSuccess = false;
        }

        return convertSuccess;
    }

    public static boolean isDate(String str) {
        boolean convertSuccess = true;
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");

        try {
            format.setLenient(false);
            format.parse(str);
        } catch (Exception var4) {
            convertSuccess = false;
        }

        return convertSuccess;
    }

    public static Date getThisWeekFirstDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar calendar = Calendar.getInstance();
            int dayOfWeek = calendar.get(7);
            calendar.add(7, -(dayOfWeek - 1));
            String beginTime1 = datef.format(calendar.getTime()) + " 00:00:00";
            Date firstDateOfWeek = dateFormat.parse(beginTime1);
            return firstDateOfWeek;
        } catch (Exception var6) {
            var6.printStackTrace();
            return null;
        }
    }

    public static Date getThisWeekLastDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar calendar = Calendar.getInstance();
            int dayOfWeek = calendar.get(7);
            calendar.add(7, 7 - dayOfWeek);
            String endTime1 = datef.format(calendar.getTime()) + " 23:59:59";
            Date lastDateOfWeek = dateFormat.parse(endTime1);
            return lastDateOfWeek;
        } catch (Exception var6) {
            var6.printStackTrace();
            return null;
        }
    }

    public static Date getThisMonthFirstDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar c = Calendar.getInstance();
            c.add(2, 0);
            c.set(5, 1);
            String beginTime1 = datef.format(c.getTime()) + " 00:00:00";
            Date firstDateOfWeek = dateFormat.parse(beginTime1);
            return firstDateOfWeek;
        } catch (Exception var5) {
            var5.printStackTrace();
            return null;
        }
    }

    public static Date getThisMonthLastDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar ca = Calendar.getInstance();
            ca.set(5, ca.getActualMaximum(5));
            String endTime1 = datef.format(ca.getTime()) + " 23:59:59";
            Date lastDateOfWeek = dateFormat.parse(endTime1);
            return lastDateOfWeek;
        } catch (Exception var5) {
            var5.printStackTrace();
            return null;
        }
    }

    public static Date setTimeGetDate(Date myDate, String time) {
        try {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = df.parse(getDate(myDate) + " " + time);
            return date;
        } catch (Exception var6) {
            try {
                SimpleDateFormat _df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
                Date date = _df.parse(getDate(myDate) + " " + time);
                return date;
            } catch (Exception var5) {
                var6.printStackTrace();
                return null;
            }
        }
    }

    public static Date getStartTimeOfDay(Date dt) {
        if (dt == null) {
            return null;
        } else {
            Calendar cal = Calendar.getInstance();
            cal.setTime(dt);
            cal.set(11, 0);
            cal.set(12, 0);
            cal.set(13, 0);
            cal.set(14, 0);
            return cal.getTime();
        }
    }

    public static Date getEndTimeOfDay(Date dt) {
        if (dt == null) {
            return null;
        } else {
            Calendar cal = Calendar.getInstance();
            cal.setTime(dt);
            cal.set(11, 23);
            cal.set(12, 59);
            cal.set(13, 59);
            cal.set(14, 999);
            return cal.getTime();
        }
    }

    public static Date getStartTimeOfNextDay(Date dt) {
        if (dt == null) {
            return null;
        } else {
            Calendar cal = Calendar.getInstance();
            cal.setTime(dt);
            cal.set(11, 0);
            cal.set(12, 0);
            cal.set(13, 0);
            cal.set(14, 0);
            cal.add(5, 1);
            return cal.getTime();
        }
    }

    public static Date addDate(Date d, long day) {
        long time = d.getTime();
        day = day * 24L * 60L * 60L * 1000L;
        time += day;
        return new Date(time);
    }

    public static Date deleteDate(Date d, long day) {
        long time = d.getTime();
        day = day * 24L * 60L * 60L * 1000L;
        time -= day;
        return new Date(time);
    }

    public static int getBetweenDays(Date before, Date after) {
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            before = sdf.parse(sdf.format(before));
            after = sdf.parse(sdf.format(after));
            Calendar cal = Calendar.getInstance();
            cal.setTime(before);
            long time1 = cal.getTimeInMillis();
            cal.setTime(after);
            long time2 = cal.getTimeInMillis();
            long between_days = (time2 - time1) / 86400000L;
            int result = Integer.parseInt(String.valueOf(between_days));
            return result;
        } catch (Exception var11) {
            return 0;
        }
    }

    public static Date getYesterdayBegin() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(7, -1);
            String beginTime1 = datef.format(calendar.getTime()) + " 00:00:00";
            Date firstDateOfWeek = dateFormat.parse(beginTime1);
            return firstDateOfWeek;
        } catch (Exception var5) {
            return null;
        }
    }

    public static Date getYesterdayEnd() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar calendar = Calendar.getInstance();
            calendar.add(7, -1);
            String endTime1 = datef.format(calendar.getTime()) + " 23:59:59";
            Date lastDateOfWeek = dateFormat.parse(endTime1);
            return lastDateOfWeek;
        } catch (Exception var5) {
            return null;
        }
    }

    public static Date getThisQuarterFirstDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar c = Calendar.getInstance();
            c.set(5, 1);
            int month = c.get(2) + 1;
            System.out.println(month);
            if (1 != month && 2 != month && 3 != month) {
                if (4 != month && 5 != month && 6 != month) {
                    if (7 != month && 8 != month && 9 != month) {
                        c.set(2, 9);
                    } else {
                        c.set(2, 6);
                    }
                } else {
                    c.set(2, 3);
                }
            } else {
                c.set(2, 12);
            }

            String beginTime1 = datef.format(c.getTime()) + " 00:00:00";
            Date firstDateOfWeek = dateFormat.parse(beginTime1);
            return firstDateOfWeek;
        } catch (Exception var6) {
            return null;
        }
    }

    public static Date getThisQuarterLastDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar c = Calendar.getInstance();
            int month = c.get(2) + 1;
            if (1 != month && 2 != month && 3 != month) {
                if (4 != month && 5 != month && 6 != month) {
                    if (7 != month && 8 != month && 9 != month) {
                        c.set(2, 11);
                    } else {
                        c.set(2, 8);
                    }
                } else {
                    c.set(2, 5);
                }
            } else {
                c.set(2, 2);
            }

            c.set(5, c.getActualMaximum(5));
            String endTime1 = datef.format(c.getTime()) + " 23:59:59";
            Date lastDateOfWeek = dateFormat.parse(endTime1);
            return lastDateOfWeek;
        } catch (Exception var6) {
            return null;
        }
    }

    public static Date getThisYearFirstDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar c = Calendar.getInstance();
            c.add(2, 0);
            c.set(6, 1);
            String beginTime1 = datef.format(c.getTime()) + " 00:00:00";
            Date firstDateOfWeek = dateFormat.parse(beginTime1);
            return firstDateOfWeek;
        } catch (Exception var5) {
            return null;
        }
    }

    public static Date getThisYearLastDay() {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar ca = Calendar.getInstance();
            ca.set(6, ca.getActualMaximum(6));
            String endTime1 = datef.format(ca.getTime()) + " 23:59:59";
            Date lastDateOfWeek = dateFormat.parse(endTime1);
            return lastDateOfWeek;
        } catch (Exception var5) {
            return null;
        }
    }

    public static Date getDayEnd(Date date) {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar ca = Calendar.getInstance();
            ca.setTime(date);
            String endTime1 = datef.format(ca.getTime()) + " 23:59:59";
            Date dateEnd = dateFormat.parse(endTime1);
            return dateEnd;
        } catch (Exception var6) {
            return null;
        }
    }

    public static Date getDayBegin(Date date) {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Calendar ca = Calendar.getInstance();
            ca.setTime(date);
            String endTime1 = datef.format(ca.getTime()) + " 00:00:00";
            Date dateEnd = dateFormat.parse(endTime1);
            return dateEnd;
        } catch (Exception var6) {
            return null;
        }
    }

    public static String getDayEndStr(Date date) {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            Calendar ca = Calendar.getInstance();
            ca.setTime(date);
            String endTime1 = datef.format(ca.getTime()) + " 23:59:59";
            return endTime1;
        } catch (Exception var4) {
            return null;
        }
    }

    public static String getDayBeginStr(Date date) {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyy-MM-dd");
            Calendar ca = Calendar.getInstance();
            ca.setTime(date);
            String endTime1 = datef.format(ca.getTime()) + " 00:00:00";
            return endTime1;
        } catch (Exception var4) {
            return null;
        }
    }

    public static boolean isSame(Date d1, Date d2) {
        try {
            SimpleDateFormat datef = new SimpleDateFormat("yyyyMMdd");
            return datef.format(d1).equals(datef.format(d2));
        } catch (Exception var3) {
            return false;
        }
    }

    public static int compare(Date before, Date end) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String beforeStr = sdf.format(before);
        String endStr = sdf.format(end);
        return beforeStr.compareTo(endStr);
    }

    public static Date getDate(Integer year, Integer month, Integer day) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(year.intValue(), month.intValue() - 1, day.intValue());
        return calendar.getTime();
    }
}
