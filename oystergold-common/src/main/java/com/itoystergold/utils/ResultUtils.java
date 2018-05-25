package com.itoystergold.utils;
//
//Source code recreated from a .class file by IntelliJ IDEA
//(powered by Fernflower decompiler)
//



import com.itoystergold.common.OysterPageRequest;
import com.itoystergold.common.OysterPageResponse;
import com.itoystergold.common.OysterResponse;
import com.itoystergold.enums.EnumResponseType;

public class ResultUtils {
 public ResultUtils() {
 }

 public static <T> OysterResponse<T> getResponse(T t) {
	 OysterResponse<T> response = new OysterResponse();
     response.setReturnObject(t);
     return response;
 }

 public static <T> OysterPageResponse<T> getPageResponse(T t, OysterPageRequest page) {
	 OysterPageResponse<T> response = new OysterPageResponse();
     response.setReturnObject(t);
     response.setStart(page.getStart());
     response.setPageSize(page.getPageSize());
     response.setTotalCount(page.getTotalCount());
     return response;
 }

 public static <T> OysterResponse<T> getSuccessResponse(T t) {
	 OysterResponse<T> response = getResponse(t);
     response.setResponseType(EnumResponseType.SUCCESS);
     return response;
 }

 public static <T> OysterPageResponse<T> getSuccessPageResponse(T t, OysterPageRequest page) {
	 OysterPageResponse<T> response = getPageResponse(t, page);
     response.setResponseType(EnumResponseType.SUCCESS);
     return response;
 }

 public static <T> OysterPageResponse<T> getSuccessPageResponse(T t, long start, long totalCount) {
	 OysterPageResponse<T> response = new OysterPageResponse();
     response.setReturnObject(t);
     response.setTotalCount(totalCount);
     response.setStart(start);
     response.setResponseType(EnumResponseType.SUCCESS);
     return response;
 }

 public static <T> OysterResponse<T> getResponse(String respcode, String respmsg, EnumResponseType responseType, T t) {
	 OysterResponse<T> response = getResponse(t);
     response.setResponseType(responseType);
     response.setRespCode(respcode);
     response.setRespMsg(respmsg);
     return response;
 }

 public static <T> OysterPageResponse<T> getPageResponse(String respcode, String respmsg, EnumResponseType responseType, T t, OysterPageRequest request) {
	 OysterPageResponse<T> response = getPageResponse(t, request);
     response.setResponseType(responseType);
     response.setRespCode(respcode);
     response.setRespMsg(respmsg);
     return response;
 }

 public static <T> OysterResponse<T> getErrResponse(Exception e, T t) {
//     if (e instanceof HsjryBizException) {
//         HsjryBizException bizE = (HsjryBizException)e;
//         return getResponse(bizE.getErrorCode(), bizE.getMsg(), EnumResponseType.FLOW_ERR, t);
//     } else if (e instanceof HsjryDBException) {
//         HsjryDBException dbE = (HsjryDBException)e;
//         return getResponse(dbE.getErrorCode(), dbE.getMsg(), EnumResponseType.SYS_ERR, t);
//     } else if (e instanceof HsjryCheckException) {
//         HsjryCheckException pvE = (HsjryCheckException)e;
//         return getResponse(pvE.getErrorCode(), pvE.getMsg(), EnumResponseType.VALIDATE_ERR, t);
//     } else {
//         return e instanceof NullPointerException ? getResponse(EnumCommonErrMsg.SYSTEM_ERR.getCode(), EnumCommonErrMsg.SYSTEM_ERR.getDescription(), EnumResponseType.SYS_ERR, t) : getResponse(EnumCommonErrMsg.RPC.getCode(), EnumCommonErrMsg.RPC.getDescription(), EnumResponseType.FLOW_ERR, t);
//     }
	 return null;
 }

// public static <T>  OysterPageResponse<T> getErrPageResponse(Exception e, T t,  OysterPageRequest request) {
//     if (e instanceof HsjryBizException) {
//         HsjryBizException bizE = (HsjryBizException)e;
//         return getPageResponse(bizE.getErrorCode(), bizE.getMsg(), EnumResponseType.FLOW_ERR, t, request);
//     } else if (e instanceof HsjryDBException) {
//         HsjryDBException dbE = (HsjryDBException)e;
//         return getPageResponse(dbE.getErrorCode(), dbE.getMsg(), EnumResponseType.SYS_ERR, t, request);
//     } else if (e instanceof HsjryCheckException) {
//         HsjryCheckException pvE = (HsjryCheckException)e;
//         return getPageResponse(pvE.getErrorCode(), pvE.getMsg(), EnumResponseType.VALIDATE_ERR, t, request);
//     } else {
//         return getPageResponse(EnumCommonErrMsg.RPC.getCode(), EnumCommonErrMsg.RPC.getDescription(), EnumResponseType.FLOW_ERR, t, request);
//     }
// }
}
