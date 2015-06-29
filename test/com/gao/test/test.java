/**
 * test.java
 * Created at 2015年6月26日
 * Created by gaojiawei
 * Copyright (C) 2015 SHANGHAI VOLKSWAGEN, All rights reserved.
 */
package com.gao.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.alibaba.fastjson.JSON;

/**
 * <p>ClassName: test</p>
 * <p>Description: TODO</p>
 * <p>Author: gaojiawei</p>
 * <p>Date: 2015年6月26日</p>
 */
public class test {
	public static void main(String[] args) {
		
		Map<String, Object> parm = new HashMap<String, Object>();
		List<Map<String, Object>> a=new ArrayList<Map<String, Object>>();
		Map<String, Object>d = new HashMap<String, Object>();
		d.put("text", "hehe");
		d.put("src", "nihao");
		a.add(d);
		a.add(d);
		parm.put("text", a);
		System.out.println(JSON.toJSONString(a));
	}
}
