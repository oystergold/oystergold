package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.dao.DeploySubbankDao;
import com.itoystergold.pojo.DeploySubbank;
import com.itoystergold.service.DeploySubbankService;

@Service
public class DeploySubbankServiceImpl implements DeploySubbankService{

	@Autowired
	private DeploySubbankDao deploySubbankDao;
	
	@Override
	public List<DeploySubbank> selectSubbanksByCityCodeAndBankNo(String cityCode, String bankNo) {
		return deploySubbankDao.selectSubbankByCityCodeAndBankNo(cityCode, bankNo);
	}

}
