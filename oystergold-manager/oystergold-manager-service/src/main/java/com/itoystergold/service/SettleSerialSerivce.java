package com.itoystergold.service;

import java.util.List;

import com.itoystergold.ext.SettleSerialPojo;
import com.itoystergold.request.SettleSerialRequest;
import com.itoystergold.utils.Page;

public interface SettleSerialSerivce {

	Page<SettleSerialPojo> querySettleSerial(long start, int pageSize, SettleSerialRequest request);

}
