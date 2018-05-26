package com.itoystergold.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itoystergold.dao.DeployLevelDao;
import com.itoystergold.pojo.DeployLevel;
import com.itoystergold.service.DeployLevelService;

@Service
public class DeployLevelServiceImpl implements DeployLevelService{

	@Autowired
	private DeployLevelDao deployLevelDao;
	
	@Override
	public List<DeployLevel> selectLevels() {
		// TODO Auto-generated method stub
		return deployLevelDao.selectLevels();
	}

}
