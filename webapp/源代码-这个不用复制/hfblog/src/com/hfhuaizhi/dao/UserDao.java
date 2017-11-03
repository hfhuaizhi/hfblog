package com.hfhuaizhi.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.hfhuaizhi.domain.User;

import com.hfhuaizhi.utils.C3P0Util;


public class UserDao {

	public User findUserByUser(User mUser) throws Exception{
		// TODO Auto-generated method stub
	
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		User user = qr.query("select * from user where username=? and password=?", new BeanHandler<User>(User.class),mUser.username,mUser.password);
		return user;
	}

	public List<User> findAllUser() throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		return qr.query("select * from user", new BeanListHandler<User>(User.class));
	}

	public void addUser(User user) throws SQLException{
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("INSERT INTO user(username,password,name,phone,email,address) VALUES(?,?,?,?,?,?)",user.username,user.password,user.name,
				user.phone,user.email,user.address
				);
	}
	public void deleteUser(String username) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("delete from user where username=?",username);
	}
	public int updateUser(User user) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		int i = qr.update("update user set password=?,name =?,phone = ?,email = ?,address = ? where username=?",
				user.getPassword(),user.name,user.phone,user.email,user.address,user.getUsername());
		
		return i;
	}

	public void deleteUserById(String id) throws SQLException {
		QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
		qr.update("delete from user where id=?",id);
		
	}
public User findUserByUsername(String username) throws Exception{
	QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());
	
	return qr.query("select * from user where username=?",
			new BeanHandler<User>(User.class), username);
}

}
