package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.DeploySubbankDao;
import com.itoystergold.mapper.DeploySubbankMapper;
import com.itoystergold.pojo.DeploySubbank;
import com.itoystergold.pojo.DeploySubbankExample;

@Repository
public class DeployCityDaoImpl implements DeploySubbankDao{
	
	@Autowired
	private DeploySubbankMapper deploySubbankMapper;

	/**
	 * @param cityCode 城市编号
	 * @param bankNo 银行编号
	 * return 返回支行
	 */
	@Override
	public List<DeploySubbank> selectSubbankByCityCodeAndBankNo(String cityCode, String bankNo) {
		
		DeploySubbankExample deploySubbankExample =  new DeploySubbankExample();
		deploySubbankExample.createCriteria().andCityCodeEqualTo(cityCode).andClsbankNoEqualTo(bankNo);
		
		try {
			List<DeploySubbank> deploySubbanks = deploySubbankMapper.selectByExample(deploySubbankExample);
			return deploySubbanks;
			
		} catch (Exception e) {
			
			throw new RuntimeException("查询支行出错");
		}
		
	}



}
