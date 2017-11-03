package com.hfhuaizhi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.hfhuaizhi.dao.UserDao;
import com.hfhuaizhi.domain.User;

public class Check extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Check() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		User user = new User();
		User tmp = null;
		try {
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user);
			UserDao dao = new UserDao();
			tmp = dao.findUserByUser(user);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		if(tmp!=null){
			request.setAttribute("user", tmp);
			HttpSession session = request.getSession();
			session.setAttribute("username", tmp.username);
			request.getRequestDispatcher("GetBaogao").forward(request, response);
		}else{
			request.setAttribute("error", "密码错误或用户名不存在");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
