//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumItemStatus {
    SHSANG("1", "上架"),
    XIA("2", "下架"),
    DELETE("3", "删除");;

    private String code;
    private String description;

    private EnumItemStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumItemStatus find(String code) {
        EnumItemStatus[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumItemStatus frs = var1[var3];
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
