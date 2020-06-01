<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>大学生校园兼职平台管理系统--登陆</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layui.css" />
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/layui.all.js"></script>
<style type="text/css">
        body{background-color:#f5f5f5;}
        .login-head{position:fixed;left:0;top:0;width:80%;height:60px;line-height:60px;background:#000;padding:0 10%;}
        .login-head h1{color:#fff;font-size:20px;font-weight:600}
        .login-box{margin:240px auto 0;width:400px;background-color:#fff;padding:15px 30px;border-radius:10px;box-shadow: 5px 5px 15px #999;}
        .login-box .layui-input{font-size:15px;font-weight:400}
        .login-box input[name="password"]{letter-spacing:5px;font-weight:800}
        .login-box .layui-btn{width:100%;}
        .login-box .copyright{text-align:center;height:50px;line-height:50px;font-size:12px;color:#ccc}
        .login-box .copyright a{color:#ccc;}
    </style>
</head>
<body>
<div class="login-head">
    <h1>大学生校园兼职平台管理系统</h1>
</div>
<div class="login-box">
<form  action="${pageContext.request.contextPath}/houtailogin" method="post" name="管理员登录">
    <div  class="layui-form layui-form-pane">
        <fieldset class="layui-elem-field layui-field-title">
            <legend>管理后台登陆</legend>
        </fieldset>
        <div class="layui-form-item">
            <label class="layui-form-label">登陆账号</label>
            <div class="layui-input-block">
                <input type="text" name="account" id="account" class="layui-input" lay-verify="required" placeholder="请输入登陆账号" autofocus="autofocus" value="">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">登陆密码</label>
            <div class="layui-input-block">
                <input type="password" name="password"  id="password" class="layui-input" lay-verify="required" placeholder="******" value="">
            </div>
        </div>
        <input type="submit" value="登陆"  onclick="gologin()"  class="layui-btn">
    </div>
  </form>
</div>

<script type="text/javascript">
function gologin(){
	/* var index = layer.load(1); */
	var account = $("#account").val();
	var password = $("#password").val();
	if(account == ""){
		layer.msg("账号不能为空,请输入");
	}else if(password == ""){
		layer.msg("密码不能为空,请输入");
	}
}
</script>
</body>
</html>