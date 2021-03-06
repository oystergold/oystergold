//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumBool {
    NO("0", "否"),
    YES("1", "是");

    private String code;
    private String description;

    private EnumBool(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumBool find(String code) {
        EnumBool[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumBool frs = var1[var3];
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
