package com.itoystergold.service;

import com.itoystergold.utils.EsayUIDatagridResult;

public interface VipuserServiceC {

	EsayUIDatagridResult vipuserList(String vname, String phoneNo, String vlevel, String vstatus, Integer page,Integer rows);
}
