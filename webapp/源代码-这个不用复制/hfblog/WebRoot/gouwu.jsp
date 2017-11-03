<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>hfblog-buy</title>
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
<script src="js/jquery-2.1.4.min.js"></script>
    <!--[if lt IE 9]>      
        <script src="js/respond.js"></script>
    <![endif]-->
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/myJS.js"></script>
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
				//	alert(num);
					document.getElementById("gwcount").innerHTML=parseInt(document.getElementById("gwcount").innerHTML)+1;
					
					
					
				}
			}
		}
		//2、建立一个连接
		req.open("get","${pageContext.request.contextPath }/AddGouwu?id="+id);
		//3、发送请求
		req.send(null);
		
		
	}
	
</script>
    
</head>
<body>
   <header>
        <div class="widewrapper masthead">
            <div class="container">
                <a href="index.html" id="logo">
                    <a class="navbar-brand" href="http://www.github.com/hfhuaizhi" target="_blank">hfhuaizhi</a>
                </a>
        
                <div id="mobile-nav-toggle" class="pull-right">
                    <a href="#" data-toggle="collapse" data-target=".clean-nav .navbar-collapse">
                       <i ><img src="img/daohang.png"/></i> 
                      
                    </a>
                </div>

                <nav class="pull-right clean-nav">
                    <div class="collapse navbar-collapse">
                        <ul class="nav nav-pills navbar-nav">
                          
                            <li>
                                <a href="index.jsp">主页</a>
                            </li>
                            <li>
                                <a href="/hfblog/GetBlogFile">文件</a>
                            </li>
                            <li>
                                <a href="/hfblog/GetBlogGood">商店 </a>
                            </li>
                            <li>
                                <a href="about.jsp">关于</a>
                            </li>
                            <li>
                                <a href="/hfblog/login.jsp">登录</a>
                            </li>                        
                        </ul>
                    </div>
                </nav>        

            </div>
        </div>

        <div class="widewrapper subheader">
            <div class="container">
                <div class="clean-breadcrumb">
                    <a  href="showgouwu.jsp"><i class="fa   fa-cart-plus" ></i><div id="gwcount" class="badge badge-important"><c:if test="${empty gouwulist}">0</c:if>${gouwulist.size()}</div> </a>
                </div>

                
            </div>
        </div>
    </header>
    <div class="widewrapper main">
        <div class="container">
            <div class="row">
           
                <div >
                    <div class="row">
                    <c:forEach items="${goodlist }" var="b">
                        <div class="col-md-6 col-sm-6" >
                            <article class=" blog-teaser">
                                <header>
                                    <img src="img/${b.img }" class="img-rounded" alt="">
                                    <h3><a href="javascript:void(0)" onclick="addgouwu(${b.id})">${b.name }</a></h3>
                                   <span class="meta" ><i class="fa fa-rmb"></i>${b.price}</span>
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
    <div class="modal fade" id="seeUser" tabindex="-1" role="dialog" aria-labelledby="seeUserModalLabel">
  <div class="modal-dialog" role="document" style="max-width:450px;">
    <form action="/hfblog/UpdatePriceDone" method="post" autocomplete="off" draggable="false">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">修改商品</h4>
        </div>
        <div class="modal-body">
          <table class="table" style="margin-bottom:0px;">
            <thead>
              <tr> </tr>
            </thead>
            <tbody>
               <tr>
                <td wdith="20%">ID:</td>
                <td width="80%"><input type="text" readonly value="" class="form-control" id="id" name="id" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">商品名:</td>
                <td width="80%"><input type="text" value="" class="form-control" id="name" name="name" maxlength="10" autocomplete="off" /></td>
              </tr>
              <tr>
                <td wdith="20%">价格:</td>
                <td width="80%"><input type="number" value="" class="form-control" id="price" name="price" maxlength="13" autocomplete="off" /></td>
              </tr>
             
            </tbody>
            <tfoot>
              <tr></tr>
            </tfoot>
          </table>
        </div>
        <div class="modal-footer">
          <input type="hidden" name="userid" value="" />
          <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
          <button type="submit" class="btn btn-primary">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.js"></script>

</body>
</html>