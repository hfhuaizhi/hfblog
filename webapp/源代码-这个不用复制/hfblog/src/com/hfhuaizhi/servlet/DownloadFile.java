package com.hfhuaizhi.servlet;



import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hfhuaizhi.dao.FileDao;
import com.hfhuaizhi.domain.MyFile;

public class DownloadFile extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		FileDao fd = new FileDao();
		MyFile tmp = null;
		try {
			tmp = fd.getFileById(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(tmp==null){
			//response.sendRedirect("")
		}
		//设置一个要下载的文件
		String filename = tmp.name;
		
		//设置文件名的编码
		if(request.getHeader("user-agent").toLowerCase().contains("msie")){
			filename = URLEncoder.encode(filename, "UTF-8");//将不安全的文件名改为UTF-8格式
		}else{
			filename = new String(filename.getBytes("UTF-8"),"iso-8859-1");//火狐浏览器
		}
		//告知浏览器要下载文件
		response.setHeader("content-disposition", "attachment;filename="+filename);
		//response.setHeader("content-type", "image/jpeg");
		response.setContentType(this.getServletContext().getMimeType(filename));//根据文件名自动获得文件类型
		
		response.setCharacterEncoding("UTF-8");//告知服务器使用什么编码
		 String path = request.getSession().getServletContext().getRealPath("/file");
			PrintWriter out = response.getWriter();
		try {
			
				FileReader fr = new FileReader(path+"/"+tmp.name);
				int len = 0;
				char[] ch = new char[1024];
				while((len =fr.read(ch))!=-1){
					out.write(ch, 0, len);
				}
		} catch (Exception e) {
			// TODO: handle exception
			response.sendRedirect("error.jsp");
		}
		//创建一个文件输出流
		
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
