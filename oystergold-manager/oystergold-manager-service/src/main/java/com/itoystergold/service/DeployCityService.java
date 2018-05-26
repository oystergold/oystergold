package com.itoystergold.service;

import java.util.List;

import com.itoystergold.pojo.DeployCity;

public interface DeployCityService {

	List<DeployCity> selectCitysByProvinceCode(String provinceCode);
}
