/**
 * JfinalConfig.java
 * Created at 2015年6月19日
 * Created by gaojiawei
 * Copyright (C) 2015 SHANGHAI VOLKSWAGEN, All rights reserved.
 */
package com.gao.common;

import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;

/**
 * <p>ClassName: MyConfig</p>
 * <p>Author: gaojiawei</p>
 * <p>Date: 2015年6月19日</p>
 */
public class MyConfig extends JFinalConfig{
	/**
	 * 配置常量
	 */
	public void configConstant(Constants me) {
		PropKit.use("a_little_config.txt");				// 加载少量必要配置，随后可用PropKit.get(...)获取值
		me.setDevMode(PropKit.getBoolean("devMode", false));
		me.setViewType(ViewType.JSP); 							// 设置视图类型为Jsp，否则默认为FreeMarker
	}
	
	/**
	 * 配置路由
	 */
	public void configRoute(Routes me) {
	}
	
	/**
	 * 配置插件
	 */
	public void configPlugin(Plugins me) {
		// 配置C3p0数据库连接池插件
		C3p0Plugin c3p0Plugin = new C3p0Plugin(PropKit.get("jdbcUrl"), PropKit.get("user"), PropKit.get("password").trim());
		me.add(c3p0Plugin);
		
		// 配置ActiveRecord插件
		ActiveRecordPlugin arp = new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
	}
	
	/**
	 * 配置全局拦截器
	 */
	public void configInterceptor(Interceptors me) {
		
	}
	
	/**
	 * 配置处理器
	 */
	public void configHandler(Handlers me) {
		
	}
}
