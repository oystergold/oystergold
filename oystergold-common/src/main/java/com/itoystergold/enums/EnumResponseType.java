//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumResponseType {
    SUCCESS("HSJRY_SUCCESS", "执行成功"),
    FLOW_ERR("HSJRY_FLOW_ERR", "流程错误"),
    VALIDATE_ERR("HSJRY_VALIDATE_ERR", "验证错误"),
    SYS_ERR("HSJRY_SYS_ERR", "系统错误");

    private String code;
    private String description;

    private EnumResponseType(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumResponseType find(String code) {
        EnumResponseType[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumResponseType frs = var1[var3];
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
