package com.itoystergold.utils;

import java.util.List;

public class CollectionUtils {

	public static <T> boolean isEmpty(List<T> list) {
		if (list == null || list.size()==0) {
			return false;
		}
		return true;
	}
	
}
