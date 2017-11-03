<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <header>
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="index.jsp" >hfhuaizhi</a> </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
          <li><a >${username }</a></li>
           <li><a href="/hfblog/GetTongxunlu">通讯录</a></li>
           <li><a href="/hfblog/GetArtical">兴趣爱好</a></li>
           <li><a href="/hfblog/GetUserList">用户管理</a></li>
           <li><a href="/hfblog/GetFile">文件管理</a></li>
           <li><a href="/hfblog/GetGood">商品管理</a></li>
            <li><a href="/hfblog/Logout" onClick="if(!confirm('是否确认退出？'))return false;">退出登录</a></li>
          </ul>
          
        </div>
      </div>
    </nav>
  </header>