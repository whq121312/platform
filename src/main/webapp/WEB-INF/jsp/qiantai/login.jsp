<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
</head>
<body>
	<div class="div_deng">
    	<div class="div_zhong">
        	<div class="div_zhong_l"></div>
              <div class="div_zhong_r">
            	<form class="form_deng" action="${pageContext.request.contextPath}/qiantailogin" method="post" name="用户登录">
                    <h2 align="center">兼职平台登录</h2><br>
                    <span class="span">账号：</span><input type="text" size="20" class="input_text" id="input_text" placeholder="请输入账号" name="username"/><br>
                    <span class="msg zhang_msg"></span><br>
                    <span class="span">密码：</span><input type="password" size="20" class="input_text" id="input_password" placeholder="请输入密码" name="password"/><br>
                    <span class="msg password_msg"></span><br>
                    <div class="remeber flex-box">
                        <input id="remebers" type="checkbox" name="" value="1" />
                        <span>记住密码</span>
                        <span class="forget-password">忘记密码？</span>
                    </div>
                    <input class="input_deng" type="submit" value="登录"/>
                    <a href="${pageContext.request.contextPath}/register" title="用户注册">
                		<input class="input_zhu" type="button" value="注册"/>
                     </a>
                    <br>
                    <span class="msg deng_msg">${msg}</span>       
      		</form>    
            </div>
        </div>
        <div class="div_xia"></div>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
      function remember_name(){
         var isRem = $("#remebers").prop("checked");
         if (isRem) {
              localStorage.setItem('username', $("#input_text").val());
              localStorage.setItem('password', $("#input_password").val());
         }else {
              localStorage.setItem('username', "");
              localStorage.setItem('password', "");
         }
  	  }

	  //用户名密码value获取
	  $("#input_text").val(localStorage.getItem('username'));
	  $("#input_password").val(localStorage.getItem('password'));
	  if(localStorage.getItem('username')==""){
	        $("#remebers").attr("checked",false)
	  }else{
	        $("#remebers").attr("checked",true)
	  }
     $("#input_text").focusout(function(){
         if ($("#input_text").val()=="") {
             $(".zhang_msg").text("账号不能为空！");
         }
         else{
             $(".zhang_msg").text("");
         }
     })
     $("#input_password").focusout(function(){
         if ($("#input_password").val()=="") {
             $(".password_msg").text("密码不能为空！");
         }
         else{
             $(".password_msg").text("");
         }
     });
    
     
    </script>
</body>
</html>