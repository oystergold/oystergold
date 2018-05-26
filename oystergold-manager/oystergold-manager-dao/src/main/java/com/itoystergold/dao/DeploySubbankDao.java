package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.DeployArea;
import com.itoystergold.pojo.DeploySubbank;

public interface DeploySubbankDao {
	
	List<DeploySubbank> selectSubbankByCityCodeAndBankNo(String cityCode,String bankNo);
}
