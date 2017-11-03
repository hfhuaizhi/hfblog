package com.hfhuaizhi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hfhuaizhi.dao.GoodDao;
import com.hfhuaizhi.domain.Good;

public class AddGouwu extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddGouwu() {
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
		
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		System.out.println("add gouwu id is"+id);
		if(id==null){
			response.sendRedirect("GetBlogGood");
		}
		//System.out.println("id is"+id);
		GoodDao dao = new GoodDao();
		HttpSession session = request.getSession();
		List<Good> gouwulist = null;
		gouwulist = (List<Good>) session.getAttribute("gouwulist");
		if(gouwulist==null){
			gouwulist = new ArrayList<Good>();
		}
		
		try {
			Good good = dao.findGoodByid(id);
			gouwulist.add(good);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("gouwulist", gouwulist);
		//response.sendRedirect("GetBlogGood");
		out.print(gouwulist.size()+"");
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
