package com.hfhuaizhi.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.hfhuaizhi.domain.Artical;
import com.hfhuaizhi.domain.Good;
import com.hfhuaizhi.domain.MyFile;
import com.hfhuaizhi.domain.Tongxun;
import com.hfhuaizhi.domain.User;
import com.hfhuaizhi.utils.C3P0Util;

public class GoodDao {
	public List<Good> findAllGood() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from good", new BeanListHandler<Good>(Good.class));
	}
	public void addFile(Good good) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("INSERT INTO good(name,price,img) VALUES(?,?,?)",good.name,good.price,good.img
				);
	}
	public Good findGoodByid(String id) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		System.out.println("select * from good where id="+id+"");
		return qr.query("select * from good where id=?",
				new BeanHandler<Good>(Good.class), id);
	}
	public int updateArtical(Good good) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		int i = qr.update("update good set name=?,price =? where id=?",
				good.name,good.price,good.id);
		
		return i;
	}
}
