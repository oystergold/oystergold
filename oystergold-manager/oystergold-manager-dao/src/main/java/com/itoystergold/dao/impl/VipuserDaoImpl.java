package com.itoystergold.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageInfo;
import com.itoystergold.dao.VipuserDao;
import com.itoystergold.mapper.VipuserMapper;
import com.itoystergold.pojo.AssetSettleSerial;
import com.itoystergold.pojo.Vipuser;
import com.itoystergold.pojo.VipuserExample;
import com.itoystergold.pojo.VipuserExample.Criteria;

@Repository
public class VipuserDaoImpl implements VipuserDao{

	@Autowired
	private VipuserMapper vipuserMapper;

	@Override
	public int countByExample() {
		
		VipuserExample vipuserExample = new VipuserExample();
		
		try {
			int count = (int) vipuserMapper.countByExample(vipuserExample);
			return	count;
		} catch (Exception e) {
			throw new RuntimeException("数据库查询会员信息记录数失败");
		}
	}

	@Override
	public int deleteByPrimaryKey(String vid) {
		
		try {
			return	vipuserMapper.deleteByPrimaryKey(vid);
		} catch (Exception e) {
			throw new RuntimeException("数据库删除会员失败");
		}
	}

	@Override
	public int insertSelective(Vipuser record) {

		try {
			return	vipuserMapper.insertSelective(record);
		} catch (Exception e) {
			throw new RuntimeException("数据库新增会员失败");
		}
	}

	@Override
	public PageInfo<Vipuser> selectByExample(String vname, String phoneNo, String vlevel, String vstatus,Integer start,Integer pagesize) {

		VipuserExample vipuserExample = new VipuserExample();
		Criteria criteria = vipuserExample.createCriteria();
		
		if(!StringUtils.isEmpty(vname)) {
			
			criteria.andVnameEqualTo(vname);
		}
		
		if(!StringUtils.isEmpty(phoneNo)) {
			
			criteria.andVtelephoneEqualTo(phoneNo);
		}
		
		if(!StringUtils.isEmpty(vlevel)) {
			
			criteria.andVlevelEqualTo(vlevel);
		}
		
		if(!StringUtils.isEmpty(vstatus)) {
			
			criteria.andVstatusEqualTo(vstatus);
		}
		
		try {
			List<Vipuser> vipusers = vipuserMapper.selectByExample(vipuserExample);
			PageInfo<Vipuser> pageInfo = new PageInfo<>(vipusers);
			return	pageInfo;
		} catch (Exception e) {
			throw new RuntimeException("数据库查询会员列表失败");
		}
	}

	@Override
	public Vipuser selectByPrimaryKey(String vid) {

		try {
			return	vipuserMapper.selectByPrimaryKey(vid);
		} catch (Exception e) {
			throw new RuntimeException("数据库查询会员详细信息失败");
		}
	}

	@Override
	public int updateByPrimaryKeySelective(Vipuser record) {

		try {
			return	vipuserMapper.updateByPrimaryKeySelective(record);
		} catch (Exception e) {
			throw new RuntimeException("数据库更新会员信息失败");
		}
	}
	

}
