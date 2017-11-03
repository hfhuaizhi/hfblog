package com.hfhuaizhi.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.hfhuaizhi.domain.Artical;
import com.hfhuaizhi.domain.MyFile;
import com.hfhuaizhi.domain.User;
import com.hfhuaizhi.utils.C3P0Util;

public class FileDao {
	public void addFile(MyFile file) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("INSERT INTO file(name) VALUES(?)",file.name
				);
	}
	public List<MyFile> findAllFile() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from file", new BeanListHandler<MyFile>(MyFile.class));
	}
	public void deleteFileByName(String name) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("delete from file where name=?",name);
		
	}
	public MyFile getFileById(String id)throws Exception{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from file where id =?", new BeanHandler<MyFile>(MyFile.class),id);
		
	}

}
