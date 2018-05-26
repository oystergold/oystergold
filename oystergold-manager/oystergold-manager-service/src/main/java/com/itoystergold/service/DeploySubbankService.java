package com.itoystergold.service;

import java.util.List;

import com.itoystergold.pojo.DeploySubbank;

public interface DeploySubbankService {

	List<DeploySubbank> selectSubbanksByCityCodeAndBankNo(String cityCode , String bankNo);
}
