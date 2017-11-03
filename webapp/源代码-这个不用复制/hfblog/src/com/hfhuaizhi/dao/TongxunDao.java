package com.hfhuaizhi.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.hfhuaizhi.domain.Tongxun;

import com.hfhuaizhi.utils.C3P0Util;


public class TongxunDao {

	public Tongxun findTongxunByTongxun(Tongxun mTongxun) throws Exception{
		// TODO Auto-generated method stub
	
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		Tongxun Tongxun = qr.query("select * from tongxun where name=?", new BeanHandler<Tongxun>(Tongxun.class),mTongxun.name);
		return Tongxun;
	}

	public List<Tongxun> findAllTongxun(String username) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from tongxun where username=?", new BeanListHandler<Tongxun>(Tongxun.class),username);
	}

	public void addTongxun(Tongxun Tongxun, String username) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("INSERT INTO tongxun(name,phone,email,work,username) VALUES(?,?,?,?,?)",Tongxun.name,Tongxun.phone,Tongxun.email,Tongxun.work,username
				);
	}
	
	public int updateTongxun(Tongxun Tongxun) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		int i = qr.update("update tongxun set name=?,phone =?,email = ?,work = ? where id=?",
				Tongxun.name,Tongxun.phone,Tongxun.email,Tongxun.work,Tongxun.id);
		
		return i;
	}

	public int deleteTongxunById(String id) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		int i = qr.update("delete from tongxun where id=?",id);
		System.out.println("delete from tongxun where id="+id+"");
		return i;
		
	}
public Tongxun findTongxunByid(String id) throws Exception{
	QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
	
	return qr.query("select * from tongxun where id=?",
			new BeanHandler<Tongxun>(Tongxun.class), id);
}

}
