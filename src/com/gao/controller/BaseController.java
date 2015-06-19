package com.gao.controller;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import com.gao.util.Result;
import com.gao.util.TimeUtil;
import com.jfinal.core.Controller;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Record;

/**
 * 基础Controller
 * 
 * @author 刘声凤 2012-9-3 下午10:37:28
 */
public abstract class BaseController extends Controller {
	protected int pageSize = 10;
	protected String tableName;

	@Override
	public void render(String view) {
		super.render(view);
	}
	/**
	 * @return 页面传回来的值
	 */
	public Record getRecord() {
		Record record = new Record();
		Map<String, Object> map = new HashMap<String, Object>();
		for (Entry<String, String[]> set : getParaMap().entrySet()) {
			map.put(set.getKey(), set.getValue()[0]);
		}
		record.setColumns(map);
		return record;
	}


	public void goShow(String url) {
		String id = this.getPara("id");
		setAttr(tableName, Db.findById(tableName, id));
		render(url);
	}

	public void save() {
		try {
			String id = getPara("id");
			if (id.equals("")) {
				id = TimeUtil.getStringTime();
				Db.save(tableName, getRecord().set("id", id).set("create_time", TimeUtil.getNewDate()));
			} else {
				Db.update(tableName, getRecord().set("id", id).set("create_time", TimeUtil.getNewDate()));
			}
			renderJson(new Result(true, id));
		} catch (Exception e) {
			e.printStackTrace();
			renderJson(new Result());
		}
	}

	public String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

	public void goUrl() {
		redirect(getRequest().getServletContext().getContextPath() + "/" + getPara("url"));
	}

	public void del() {
		try {
			String id = getPara("id");
			Db.deleteById(tableName, id);
			renderJson(true);
		} catch (Exception e) {
			renderJson(false);
			e.printStackTrace();
		}
	}
}
