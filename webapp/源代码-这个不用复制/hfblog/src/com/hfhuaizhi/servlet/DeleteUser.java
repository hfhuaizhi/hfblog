package com.hfhuaizhi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.hfhuaizhi.dao.UserDao;
import com.hfhuaizhi.domain.User;

public class DeleteUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteUser() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	if(req.getSession().getAttribute("username")==null){
		resp.sendRedirect("login.jsp");
		return;
	}
	String id = req.getParameter("id");
	if(id==null){
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}
	
	UserDao dao = new UserDao();
	try {
		dao.deleteUserById(id);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		
		String username = request.getParameter("username");
		try {
			
			UserDao dao = new UserDao();
			dao.deleteUser(username);
			
			request.getRequestDispatcher("GetUserList").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("error", "出现错误");
			request.getRequestDispatcher("delete.jsp").forward(request, response);
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
