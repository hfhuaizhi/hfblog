package com.hfhuaizhi.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hfhuaizhi.dao.ArticalDao;
import com.hfhuaizhi.dao.FileDao;
import com.hfhuaizhi.dao.GoodDao;
import com.hfhuaizhi.dao.UserDao;
import com.hfhuaizhi.domain.Good;
import com.hfhuaizhi.domain.MyFile;
import com.hfhuaizhi.domain.User;


public class GetBaogao extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetBaogao() {
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
		 
		try {
			ArticalDao dao = new ArticalDao();
			int l = dao.countArticals();
			
			request.setAttribute("countArticals", l+"");
			FileDao fdao = new FileDao();
			List<MyFile> listfile = fdao.findAllFile();
			request.setAttribute("countfiles", listfile.size()+"");
			GoodDao gdao = new GoodDao();
			List<Good> glist = gdao.findAllGood();
			request.setAttribute("countgoods", glist.size()+"");
			request.getRequestDispatcher("manager.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	public void init() throws ServletException {
		// Put your code here
	}

}
