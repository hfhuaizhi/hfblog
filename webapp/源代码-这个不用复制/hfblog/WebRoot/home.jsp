<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>hfblog-home</title>
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
        <script src="js/respond.js"></script>
    <![endif]-->

<script type="text/javascript" src="js/particles.min.js"></script>
</head>
<body>

   <%@ include file="blogheader.jsp"%> 

    <div class="widewrapper main" >
        <div class="container">
            <div class="row">
           
                <div >
                    <div class="row">
                    <c:forEach items="${articallist }" var="b">
                        <div class="col-md-6 col-sm-6">
                            <article class=" blog-teaser">
                                <header>
                                    <img src="img/${b.img }" class="img-rounded" alt="">
                                    <h3><a href="/hfblog/ShowArtical?id=${b.id }">${b.title }</a></h3>
                                    <span class="meta">${b.date}</span>
                                    <hr>
                                </header>
                            
                            </article>
                        </div>
                   </c:forEach>	

                    </div>

                    <div class="paging">
                        <a href="#" class="older">hello my friends</i></a>
                    </div>
                </div>
               
                
                        
                       
                    </div>
                </aside>
            </div>
        </div>
    </div>

    <footer>
        
        <div class="widewrapper copyright">
                hfhuaizhi.</a>
        </div>
    </footer>
    
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.js"></script>
<div id="particles-js"></div>

</body>

</html>