<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>hfblog-buy</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
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

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate2.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<link rel="stylesheet" href="css/style3.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/myJS.js"></script>
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
	function addgouwu(id) {
	//alert(id)
		//1、获取XMLHttpRequest对象
		var req = getXMLHttpRequest();
		
		//4、处理响应结果
		req.onreadystatechange = function(){
			//alert(req.readyState);
			if(req.readyState==4){
				//alert(req.status);//查看服务器端响应状态
				if(req.status==200){//服务器响应一切正常
					//alert(req.responseText);
					var num = req.responseText;
					
					document.getElementById("gwcount").innerHTML=num;
					
					
					
				}
			}
		}
		//2、建立一个连接
		req.open("get","${pageContext.request.contextPath }/AddGouwu?id="+id);
		//3、发送请求
		req.send(null);
		
		
	}
	function removegood(id){
	var req = getXMLHttpRequest();
		
		//4、处理响应结果
		req.onreadystatechange = function(){
			//alert(req.readyState);
			if(req.readyState==4){
				//alert(req.status);//查看服务器端响应状态
				if(req.status==200){//服务器响应一切正常
					var num = req.responseText;
					
					document.getElementById("gwcount").innerHTML=num;
				}
			}
		}
		//2、建立一个连接
		req.open("get","${pageContext.request.contextPath }/RemoveGouwu?id="+id);
		//3、发送请求
		req.send(null);
	
	}
</script>

	</head>
	<body>
	<div style=" position:fixed;
  left:8px;
  top:3px;">
<a data-toggle="modal" data-target="#showgw" ><img alt="" src="images/buycar.png"/> <span id="gwcount" class="badge badge-important">${gouwulist.size()}</span></a></br></br>
<a href="index.jsp"><img src="images/return.png"/></a>
</div>

 
		<header id="fh5co-header" role="banner">
			<div class="container text-center">
				<div id="fh5co-logo">
					<a data-toggle="modal" data-target="#test"><img src="images/logo.png" alt="Present Free HTML5 Bootstrap Template"></a>
				</div>
				<nav>
					<ul>
						<li><a href="">没有实际功能，只是测试，买了别让我发货~</a></li>
						
					</ul>
				</nav>
			</div>
		</header>
		
		
		<!-- END #fh5co-header -->
        <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="hfblog-buy">hfblog-buy</a></div>


		<div class="container-fluid pt70 pb70">
			<div id="fh5co-projects-feed" class="fh5co-projects-feed clearfix masonry">
			<c:forEach items="${goodlist }" var="b">
				<div class="fh5co-project masonry-brick" onclick="addgouwu(${b.id})">
					<a >
						<img src="images/${b.img }" alt="hfblog-img-heihei">
						<h2>${b.name}</h2>
						<h2><font size="3" color="#ff11cc">￥${b.price}</font></h2>
					</a>
				</div>
			</c:forEach>
				
			</div>
			<!--END .fh5co-projects-feed-->
		</div>
		<!-- END .container-fluid -->

		<footer id="fh5co-footer" role="contentinfo">
			
					<div class="copyright"><small>&copy; hfhuaizhi. All Rights Reserved. </small></div>
				
		</footer>
		<!-- END #fh5co-footer -->
		<!-- 购物车页面 -->
<div class="modal fade" id="showgw"  role="dialog" aria-labelledby="addUserModalLabel">

  <div class="modal-dialog" role="document" >
  
    <form  action="/hfblog/index.jsp" method="get" autocomplete="off" draggable="false">

      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >我的购物车</h4>
        </div>
        <div class="modal-body">
         <!--  <table class="table" style="margin-bottom:0px;">
            <thead>
             <tr>
              <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg">商品名</span></th>
                <th><span class="glyphicon glyphicon-usd"></span> <span class="visible-lg">价格</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
              </tr>
              </thead>
            <tbody>
             
              <c:forEach items="${gouwulist }" var="b">
              <tr>
                <td wdith="20%" name="name">${b.name }</td>
                <td width="80%" name="price"><font size="3" color="#ff11cc">${b.price}</font></td>
              </tr>
              </c:forEach>
              <tr>
                <td wdith="20%" name="name" colspan="2"><font size="4" color="#ff00bb">总价</font></td>
                <td width="80%" name="price"></td>
                <td width="80%" name="price"><c:forEach items="${gouwulist }" var="b" ><c:set var="count" value="${count+b.price }"></c:set></c:forEach><font size="4" color="#ff00bb">${count}</font> </td>
              </tr>
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table> -->
          <table class="table table-striped table-hover" style="background:#fff">
            <thead>
             <tr>
              <th><span class="glyphicon glyphicon-bookmark"></span> <span class="visible-lg">商品名</span></th>
                <th><span class="glyphicon glyphicon-usd"></span> <span class="visible-lg">价格</span></th>
                <th><span class="glyphicon glyphicon-pencil"></span> <span class="visible-lg">操作</span></th>
              </tr>
              </thead>
           <tbody id="buycar">
             
              <c:forEach items="${gouwulist }" var="b">
              <tr>
                <td  name="name">${b.name }</td>
                <td  name="price"><font size="3" color="#ff11cc">${b.price}</font></td>
                <td  name="name"><a data-dismiss="modal" onclick="removegood(${b.id})"><img src="images/delete.png"/></a> </td>
              </tr>
              </c:forEach>
              <tr>
                <td wdith="50%" name="name" colspan="2"><font size="4" color="#ff00bb">总价</font></td>
                
                <td width="50%" name="price"><c:forEach items="${gouwulist }" var="b" ><c:set var="count" value="${count+b.price }"></c:set></c:forEach><font size="4" color="#ff00bb">${count}</font> </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">结账</button>
        </div>
      </div>
      
    </form>
     
    
  </div>
 
</div>
		
	<!-- jQuery -->
	<script src="js/jquery3.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap3.min.js"></script>
	<!-- masonry -->
	<script src="js/jquery3.masonry.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main3.js"></script>

	</body>
</html>

