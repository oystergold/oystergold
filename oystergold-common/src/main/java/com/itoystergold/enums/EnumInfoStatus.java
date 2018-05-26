//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumInfoStatus {
    NO("0", "未激活"),
    YES("1", "已激活");
	
    private String code;
    private String description;

    private EnumInfoStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumInfoStatus find(String code) {
        EnumInfoStatus[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumInfoStatus frs = var1[var3];
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
