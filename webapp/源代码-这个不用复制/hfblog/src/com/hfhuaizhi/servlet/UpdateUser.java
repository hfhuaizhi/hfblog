package com.hfhuaizhi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.hfhuaizhi.dao.UserDao;
import com.hfhuaizhi.domain.User;

public class UpdateUser extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateUser() {
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
		if(request.getSession().getAttribute("username")==null){
			response.sendRedirect("login.jsp");
			return;
		}
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		User user = new User();
		User tmp = null;
		
		try {
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user);
			UserDao dao = new UserDao();
			int i = dao.updateUser(user);
			HttpSession session = request.getSession();
			if(i<1){
				session.setAttribute("erroruser", "出现错误");
			}
			//request.getRequestDispatcher("GetUserList").forward(request, response);
			response.sendRedirect("GetUserList");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("GetUserList");
			//request.getRequestDispatcher("GetUserList.jsp").forward(request, response);
		} 
		
		out.flush();
		out.close();
	}
@Override
protected void doPut(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(req, resp);
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
