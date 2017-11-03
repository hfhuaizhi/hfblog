<%@page import="java.sql.SQLException"%>
<%@page import="com.hfhuaizhi.domain.Artical"%>
<%@page import="com.hfhuaizhi.dao.ArticalDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
    <%
    response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		ArticalDao dao = new ArticalDao();
		List<Artical> userList;
		try {
			userList = dao.findAllArtical();
			request.setAttribute("articallist", userList);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("login.jsp");
		}
	
    
     %>
  </body>
</html>
