<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>hfblog-artical</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font-Awesome -->
    <link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">

    <!-- Google Webfonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600|PT+Serif:400,400italic' rel='stylesheet' type='text/css'>

    <!-- Styles -->
   <link rel="stylesheet" href="css/style2.css" id="theme-styles">

    <!--[if lt IE 9]>      
        <script src="js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->

    <% 
if(request.getAttribute("artical")==null){
	response.sendRedirect("index.jsp");
}
 %>
</head>
<body>
   <%@ include file="blogheader.jsp"%> 

    <div class="widewrapper main">
        <div class="container">
            <div class="row">
                <div >
                    <article class="blog-post">
                        <header>
                           
                            <div class="lead-image">
                                <img src="img/${artical.img }" alt="" class="img-responsive">
                                
                            </div>
                        </header>
                        <div class="body">
                            <h1>${artical.title}</h1>
                            <div class="meta">
                                <i class="fa fa-user"></i> ${artical.username} <i class="fa fa-calendar"></i>${artical.date}</i><span class="data"></span>
                            </div>
                            ${artical.content}

                        </div>
                    </article>

                    <aside class="social-icons clearfix">
                        <h3>Learn More </h3> 
                        <a href="http://www.github.com/hfhuaizhi" target="_blank"><i class="fa  fa-github"></i></a > <a ><i class="fa  fa-qq"></i></a> <a href="about.jsp"><i class="fa   fa-weixin"></i></a>
                    </aside>
                </div>
                
            </div>
        </div>
    </div>

    <footer>
        <div class="widewrapper footer">
            
        <div class="widewrapper copyright">
                hfhuaizhi
        </div>
    </footer>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.js"></script>

</body>
</html>