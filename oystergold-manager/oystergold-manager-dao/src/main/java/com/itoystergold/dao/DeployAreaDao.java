package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.DeployArea;

public interface DeployAreaDao {
	
	List<DeployArea> selectAreasByCityCode(String cityCode);
}
