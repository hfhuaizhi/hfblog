<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>购物车</title>
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
        <script src="js/vendor/google/html5-3.6-respond-1.1.0.min.js"></script>
    <![endif]-->

</head>
<body>
  <%@ include file="blogheader.jsp"%> 

    <div class="widewrapper main">
        <div class="container about" style="font-family:Microsoft Yahei">
            <div class="table-responsive">
  <table class="table">
    <caption>购物车</caption>
    <thead>
      <tr>
        <th>商品</th>
        <th>价格</th>
        <th>操作</th></tr>
    </thead>
    <tbody>
    <c:forEach items="${gouwulist }" var="b">
    <c:set var="haha" value="${haha+1 }"></c:set>
      <tr>
        <td>${b.name }</td>
        <td>￥${b.price }</td>
        <td><a href="${pageContext.request.contextPath }/RemoveGouwu?id=${haha}">删除</a></td>
      </tr>
      
     </c:forEach>
     <tr><td colspan="3" ><center><a href="index.jsp"><button type="button" class="btn btn-danger">结账(<c:forEach items="${gouwulist }" var="b" ><c:set var="count" value="${count+b.price }"></c:set></c:forEach>￥${count })</button></a></center></td></tr>
    </tbody>
  </table>
</div>
        </div>

    </div>
    

    <footer>
        
        <div class="widewrapper copyright">
               hfhuaizhi
        </div>
    </footer>
    <!--微信二维码模态框-->
<div class="modal fade user-select" id="WeChat" tabindex="-1" role="dialog" aria-labelledby="WeChatModalLabel">
  <div class="modal-dialog" role="document" style="margin-top:120px;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="WeChatModalLabel" style="cursor:default;">微信扫一扫</h4>
      </div>
      <div class="modal-body" style="text-align:center"> <img src="images/weixin.jpg" alt="" style="cursor:pointer"/> </div>
    </div>
  </div>
</div>
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.js"></script>

</body>
</html>