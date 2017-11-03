<%@page import="com.hfhuaizhi.domain.Tongxun"%>
<%@page import="com.hfhuaizhi.domain.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>updateuser</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style1.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<% User user = (User)request.getAttribute("upuser"); 
	if(user==null){
		response.sendRedirect("login.jsp");
	}
%>
	</head>
	<body class="style-2">

		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						
						<li class="active"><a href="http://www.github.com/hfhuaizhi">hfhuaizhi</a></li>
						
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					

					<!-- Start Sign In Form -->
					<form action="/hfblog/UpdateUser" method="post" class="fh5co-form animate-box" data-animate-effect="fadeInLeft">
						<h2>Modify</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">Your info has been saved.</div>
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">YourName</label>
							<input value="${upuser.name }"  type="text" class="form-control" name="name" id="name" placeholder="your name" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">UserName</label>
							<input type="text" value="${upuser.username }"  readonly class="form-control" name="username" id="name" placeholder="userName" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">Email</label>
							<input type="email" value="${upuser.email }" name = "email" class="form-control" id="email" placeholder="Email" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" value="${upuser.password }" name="password" class="form-control" id="password" placeholder="Password" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">Re-type Password</label>
							<input type="password" class="form-control" id="re-password" placeholder="Re-type Password" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">Phone</label>
							<input type="text" value="${upuser.phone }" class="form-control" name="phone" id="name" placeholder="phone" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="address" class="sr-only">Address</label>
							<input type="text" value="${upuser.address }" class="form-control" name="address" id="name" placeholder="address" autocomplete="off">
						</div>
						
						
						
						<div class="form-group">
							<input type="submit" value="Modify" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->
<%String error = (String)request.getAttribute("errorsignup"); 
					if(error!=null){
					%>
					<input type="submit" value="${errorsignup}" class="btn btn-primary" ><%} %>

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved <a href="#" target="_blank" title="hfhuaizhi">hfhuaizhi</a> </small></p></div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>

