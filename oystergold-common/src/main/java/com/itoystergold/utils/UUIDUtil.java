//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.utils;

import java.util.Random;
import java.util.UUID;

public class UUIDUtil {
    public UUIDUtil() {
    }

    public static String getUUID() {
        String uuid = UUID.randomUUID().toString().trim().replaceAll("-", "").toUpperCase();
        return uuid;
    }

    public static String getUUIDByRules(String rules) {
        String radStr = rules;
        StringBuffer generateRandStr = new StringBuffer();
        Random rand = new Random();
        int length = 32;

        for(int i = 0; i < length; ++i) {
            if (rules != null) {
                int rpoint = rules.length();
                int randNum = rand.nextInt(rpoint);
                generateRandStr.append(radStr.substring(randNum, randNum + 1));
            }
        }

        return generateRandStr + "";
    }
}
