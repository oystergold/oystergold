package com.itoystergold.dao;

import java.util.List;

import com.itoystergold.pojo.Order;

public interface OderDao {

	List<Order> queryByName(String buyName);

}
