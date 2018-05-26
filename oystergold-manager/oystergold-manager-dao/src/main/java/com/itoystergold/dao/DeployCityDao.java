package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.DeployCity;

public interface DeployCityDao {

	List<DeployCity> selectCitiesByProvinceCode(String provinceCode);
}
