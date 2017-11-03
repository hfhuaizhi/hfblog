package com.hfhuaizhi.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.hfhuaizhi.dao.TongxunDao;
import com.hfhuaizhi.dao.UserDao;
import com.hfhuaizhi.domain.Tongxun;
import com.hfhuaizhi.domain.User;

public class UpdateTongxun extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateTongxun() {
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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getSession().getAttribute("username")==null){
			response.sendRedirect("login.jsp");
			return;
		}
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		Tongxun user = new Tongxun();
		Tongxun tmp = null;
		
		try {
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println(user);
			TongxunDao dao = new TongxunDao();
			int i = dao.updateTongxun(user);
			HttpSession session = request.getSession();
			if(i<1){
				session.setAttribute("erroruser", "出现错误");
			}
			response.sendRedirect("GetTongxunlu");
			//request.getRequestDispatcher("GetTongxunlu").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("GetTongxunlu");
			//request.getRequestDispatcher("GetTongxunlu.jsp").forward(request, response);
		} 
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
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
