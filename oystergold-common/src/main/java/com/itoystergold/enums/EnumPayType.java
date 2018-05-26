//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumPayType {
    ONLINE("0", "线上付款"),
    OFFLINE("1", "线下付款");

    private String code;
    private String description;

    private EnumPayType(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumPayType find(String code) {
        EnumPayType[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumPayType frs = var1[var3];
            if (frs.getCode().equals(code)) {
                return frs;
            }
        }

        return null;
    }

    public String getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }
}
