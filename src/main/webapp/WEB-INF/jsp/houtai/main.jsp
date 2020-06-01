<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>大学生校园兼职平台管理系统</title>
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" media="all" />
<style>
#header{ 
	width: 100%;
	height: 100%;
	background-color:#eee;
}
</style>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">兼职平台管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="#">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="#">
          <img src="${msg.adminImg}" class="layui-nav-img">
          <span id="span">${msg.adminName}</span>
        </a>
        <dl class="layui-nav-child">
          <dd><a href="#" onclick="person()">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item logout"> <a href="${pageContext.request.contextPath}/houtailogin">退了</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="#">用户管理</a>
          <dl class="layui-nav-child">
            <dd><a href="#" onclick="getPage('${pageContext.request.contextPath}/goUserList')">用户列表</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a class="" href="javascript:;">兼职管理</a>
          <dl class="layui-nav-child">
            <dd><a href="#" onclick="getPage('${pageContext.request.contextPath}/goWorkList')">兼职列表</a></dd>
            <dd><a href="#" onclick="getPage('${pageContext.request.contextPath}/goUnauditedWorkList')">未审核兼职列表</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a class="" href="javascript:;">系统管理</a>
          <dl class="layui-nav-child">
            <dd><a href="#">公告列表</a></dd>
            <dd><a href="#">系统设置</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body content-main" style="scrolling:no;overflow-y: hidden;">
    <!-- 内容主体区域 -->
    
  </div>
  
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layui.all.js"></script>
<script type="text/javascript">
	layui.use('element', function(){
		var element = layui.element;
	});	
	//获取页面
	function getPage(url){
		$(".content-main").html("<iframe class=\"header\" id=\"header\" src="+url+" frameborder=\"no\" border=\"0\" marginwidth=\"0\" marginheight=\"0\" name=\"header\"></iframe>");
	}
	getPage('${pageContext.request.contextPath}/login');
	function person() {
		 var value=document.getElementById("span").innerText;
		 window.location.href="${pageContext.request.contextPath}/xiugaipwd?"+"name="+value;
	}
</script>
</body>
</html>