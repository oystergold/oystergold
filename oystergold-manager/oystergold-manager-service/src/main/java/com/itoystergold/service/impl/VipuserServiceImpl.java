package com.itoystergold.service.impl;

import java.util.Date;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.itoystergold.common.OysterResponse;
import com.itoystergold.dao.VipuserDao;
import com.itoystergold.dao.VipuserInfoDao;
import com.itoystergold.pojo.Vipuser;
import com.itoystergold.pojo.VipuserInfo;
import com.itoystergold.request.VipuserRequest;
import com.itoystergold.respone.VipuserRespone;
import com.itoystergold.service.VipuserService;
import com.itoystergold.utils.UUIDUtil;

@Service
public class VipuserServiceImpl implements VipuserService {

	@Autowired
	private VipuserDao vipuserDao;
	
	@Autowired
	private VipuserInfoDao vipuserInfoDao;

	@Transactional
	@Override
	public OysterResponse<VipuserRespone> deleteVipuser(VipuserRequest request) {
		
		String vid = request.getVid();
		vipuserDao.deleteByPrimaryKey(vid);
		vipuserInfoDao.deleteByPrimaryKey(vid);
		return null;
	}

	@Transactional
	@Override
	public OysterResponse<VipuserRespone> saveOrUpdateVipuser(VipuserRequest request) {

		String vid = request.getVid();
		Vipuser vipuser = new Vipuser();
		VipuserInfo vipuserInfo = new VipuserInfo();
		
		if(StringUtils.isEmpty(vid)) {
			
			vid = UUIDUtil.getUUID();
			BeanUtils.copyProperties(request, vipuser);
			vipuser.setCreatetime(new Date());
			vipuser.setUpdatetime(new Date());
			vipuser.setVcode(UUIDUtil.getUUID());
			vipuser.setVid(vid);
			BeanUtils.copyProperties(request, vipuserInfo);
			vipuserInfo.setCreatetime(new Date());
			vipuserInfo.setUpdatetime(new Date());
			vipuserInfo.setVid(vid);
			vipuserDao.insertSelective(vipuser);
			vipuserInfoDao.insertSelective(vipuserInfo);
		}else {
			
			vipuser = vipuserDao.selectByPrimaryKey(vid);
			vipuserInfo  = vipuserInfoDao.selectByPrimaryKey(vid);
			BeanUtils.copyProperties(request, vipuser);
			BeanUtils.copyProperties(request, vipuserInfo);
			vipuserDao.updateByPrimaryKeySelective(vipuser);
			vipuserInfoDao.updateByPrimaryKeySelective(vipuserInfo);
		}
		
		return null;
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipusers(VipuserRequest request) {

		return null;
	}

	@Override
	public OysterResponse<VipuserRespone> selectVipuserById(VipuserRequest request) {

		return null;
	}

}
