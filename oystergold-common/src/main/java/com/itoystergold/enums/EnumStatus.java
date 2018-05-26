//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumStatus {
    CHULIZHONG("0", "处理中"),
    SUCCSESS("1", "成功"),
    FALSE("2", "失败");

    private String code;
    private String description;

    private EnumStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumStatus find(String code) {
        EnumStatus[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumStatus frs = var1[var3];
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
