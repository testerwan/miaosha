package com.miaoshaproject.error;

public enum EmBusinessError implements CommonError {


    PARAMETER_INVALID_ERROR(10003, "参数错误"),
    UNKNOWN_ERROR(10002, "未知错误"),
    USER_NOT_EXIST(10001, "用户不存在"),
    USER_LOGIN_FAIL(20002, "用户手机号或密码错误!"),
    USER_NOT_LOGIN(20003, "用户未登录"),
    STOCK_NOT_ENOUGH(30000, "商品库存不足");

    private int errCode;
    private String errMsg;

    private EmBusinessError(int errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }

    @Override
    public int getErrCode() {
        return this.errCode;
    }

    @Override
    public String getErrMsg() {
        return this.errMsg;
    }

    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg = errMsg;
        return this;
    }
}
