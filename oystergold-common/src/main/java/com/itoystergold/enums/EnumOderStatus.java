//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.itoystergold.enums;

public enum EnumOderStatus {
    NO_pay("1", "未付款"),
    PAY("2", "已付款"),
    NO_SEND("3", "未发货"),
    SEND("4", "已发货"),
    TRANS_SUCCESS("5", "交易成功"),
    TRANS_CLOSE("6", "关闭"),
    ;

    private String code;
    private String description;

    private EnumOderStatus(String code, String description) {
        this.code = code;
        this.description = description;
    }

    public static EnumOderStatus find(String code) {
        EnumOderStatus[] var1 = values();
        int var2 = var1.length;

        for(int var3 = 0; var3 < var2; ++var3) {
            EnumOderStatus frs = var1[var3];
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
