package com.hfhuaizhi.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hfhuaizhi.dao.FileDao;

public class DeleteFile extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteFile() {
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

		doPost(request, response);
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
		if(request.getSession().getAttribute("username")==null){
			response.sendRedirect("login.jsp");
			return;
		}
		String name = request.getParameter("name");
		if(name==null){
			response.sendRedirect("login.jsp");
		}
		 String path = request.getSession().getServletContext().getRealPath("/file");
		 File file = new File(path);
		 File files[] = file.listFiles();
		 for(int i=0;i<files.length;i++){
			 if((files[i].getName().equals(name))){
				 files[i].delete();
				 break;
			 }
		 }
		 System.out.println("path"+path);
		 System.out.println("files.length"+files.length);
		 FileDao dao = new FileDao();
		 try {
			dao.deleteFileByName(name);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 request.getRequestDispatcher("managerFile.jsp").forward(request, response);
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
