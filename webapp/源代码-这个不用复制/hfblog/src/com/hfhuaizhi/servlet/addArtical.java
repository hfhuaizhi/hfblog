package com.hfhuaizhi.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.hfhuaizhi.dao.ArticalDao;
import com.hfhuaizhi.domain.Artical;

public class addArtical extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public addArtical() {
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

		String username = (String) request.getSession().getAttribute("username");
		if(username==null){
			response.sendRedirect("login.jsp");
			return;
		}
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		 BufferedReader br = new BufferedReader(new FileReader(new File(request.getSession().getServletContext().getRealPath("/config/imgindex.txt"))));
	        String index = br.readLine();
	        String[] str = br.readLine().split(",");
	        index = str[Integer.parseInt(index)];
		Artical arti = new Artical();
		if(request.getSession().getAttribute("username")==null){
			response.sendRedirect("login.jsp");
			return;
		}
		try {
			BeanUtils.populate(arti, request.getParameterMap());
			 Date d = new Date();  
			    // System.out.println(d);  
			     SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");  
			     //SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			     String date = sdf.format(d);  
			     arti.date = date;
			     int i = (int)(Math.random()*5)+1;
			     arti.img = index+".jpg";
			     ArticalDao dao = new ArticalDao();
			     dao.addArtical(arti,username);
			    
			     response.sendRedirect("GetArtical");
			    // request.getRequestDispatcher("GetArtical").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			 response.sendRedirect("GetArtical");
			// request.getRequestDispatcher("GetArtical").forward(request, response);
		} 
		
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
