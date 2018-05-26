package com.itoystergold.service;

import java.util.List;

import com.itoystergold.pojo.DeployArea;

public interface DeployAreaService {

	List<DeployArea> selectAreasByCityCode(String cityCode);
}
