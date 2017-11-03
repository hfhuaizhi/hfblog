package com.hfhuaizhi.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.hfhuaizhi.domain.Artical;
import com.hfhuaizhi.domain.Tongxun;
import com.hfhuaizhi.domain.User;
import com.hfhuaizhi.utils.C3P0Util;

public class ArticalDao {
	public int countArticals() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		long l =  (Long)qr.query("select count(*) from artical", new ScalarHandler(1));
		return (int)l;
	}
	public List<Artical> findAllArtical() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from artical", new BeanListHandler<Artical>(Artical.class));
	}
	public List<Artical> findAllArticalByUser(String username) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from artical where username=?", new BeanListHandler<Artical>(Artical.class),username);
	}
	public void addArtical(Artical user, String username) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("INSERT INTO artical(title,content,date,img,username) VALUES(?,?,?,?,?)",user.title,user.content,user.date,user.img,username				);
	}
	public void deleteArticalById(String id) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("delete from artical where id=?",id);
		
	}
	public Artical findArticalByid(String id) throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		
		return qr.query("select * from artical where id=?",
				new BeanHandler<Artical>(Artical.class), id);
	}
	public int updateArtical(Artical user) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		int i = qr.update("update artical set title=?,content =? where id=?",
				user.title,user.content,user.id);
		
		return i;
	}

}
