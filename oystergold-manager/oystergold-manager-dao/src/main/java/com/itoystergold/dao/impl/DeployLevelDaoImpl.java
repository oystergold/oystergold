package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itoystergold.dao.DeployLevelDao;
import com.itoystergold.mapper.DeployLevelMapper;
import com.itoystergold.pojo.DeployLevel;
import com.itoystergold.pojo.DeployLevelExample;

@Repository
public class DeployLevelDaoImpl implements DeployLevelDao{
	
	@Autowired
	private DeployLevelMapper deployLevelMapper;

	@Override
	public List<DeployLevel> selectLevels() {
		DeployLevelExample deployLevelExample = new DeployLevelExample();
		try {
			
			return deployLevelMapper.selectByExample(deployLevelExample);
		} catch (Exception e) {
			throw new RuntimeException("查询会员等级出错");
		}
	}

}
