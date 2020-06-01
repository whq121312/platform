<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>欢迎注册</title> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css">
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
</head>
<body>
	<div class="zhu">
		<div class="zhu_zhong">
			<div class="zhu_l"></div>
			<div class="zhu_z">
				<form class="form_zhu" action="${pageContext.request.contextPath}/zhuce2" method="post" name="用户注册">
                    <h2 align="center">兼职平台注册</h2><br>
                    <div><span align="right"> 昵称：</span><input name="UserName" type="text" class="in input_xing" maxlength="5" placeholder="请输入昵称"></div>
                    <div><span class="msg ni_msg"></span></div>
					<div><span align="right"> 姓名：</span><input name="Realname" type="text" class="in input_ni" maxlength="10" placeholder="请输入真名"></div> 
					<div><span class="msg xing_msg"></span></div>
					<div><span align="right"> 密码：</span><input name="UserPassword" type="password" class="in input_password" maxlength="20" minlength="6" placeholder="请输入密码"></div>
					<div><span class="msg password_msg"></span></div>
					<div><span align="right"> 性别：</span><input name="UserSex" type="radio" value="男" checked="checked">男
						<input name="UserSex" type="radio" value="女">女</div>
					<div><span class="msg bie_msg"></span></div>
					<div><span align="right"> 用户类型：</span><select name="user_category" class="in input_user">
					<option value="学生">学生
					<option value="商家">商家
					</select></div>
					<div><span class="msg user_msg"></span></div>
					<div><span align="right"> 联系电话：</span><input name="UserMobile" type="text" class=" in input_lian" maxlength="11" placeholder="请输入联系电话"></div>
					<div><span class="msg lian_msg"></span></div>
			       	<span align="right"> 头像：</span><input name="UserImg" type="file" class="input_tou"><br>
			       	<span class="msg tou_msg"></span><br>
			       	<ul></ul>
					<input type="submit"  value="立即注册" class="input_zhuce">      
		      		</form>
			</div>
			<div class="zhu_r"></div>
		</div>
	</div>
	<div class="xia"></div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		var headerImage = '';
		// 判断姓名 
		$(".input_xing").focusout(function(){
			if ($(".input_xing").val()=="") {
				$(".xing_msg").text("姓名不能为空！");
			}
			else if(!/^[\u4e00-\u9fa5]+$/.test($(".input_xing").val())){
				$(".xing_msg").text("姓名只能为中文！");
			}
			else{
				$(".xing_msg").text("");
			}
		})
		//判断昵称
		$(".input_ni").focusout(function(){
			if ($(".input_ni").val()=="") {
				$(".ni_msg").text("昵称不能为空！");
			}
			else if($(".input_ni").val().length <2){
				console.log($(".input_ni").val().length);
				$(".ni_msg").text("昵称不能小于2位数！");
			}
			else if(!/^[\u4E00-\u9FA5\w\d]+$/.test($(".input_ni").val())){
				$(".ni_msg").text("昵称只能由中文、数字、字母或下划线组成！");
			}
			else{
				$.ajax({
				   url:"${ctx}/pc/login/findUserByNickName.action",
				   data:{"nickName":$(".input_ni").val()},
				   type:"POST",
				   success:function(res){
						if(res.code == 0){
							$(".ni_msg").text("该昵称已存在，请重新输入！");
							$(".input_ni").val("");
						}
						else{
							$(".ni_msg").text("");
						}
					},
				   datatype:"text"
			    });
				$(".ni_msg").text("");
			}
		})
		// 判断密码
		$(".input_password").focusout(function(){
			if ($(".input_password").val()=="") {
				$(".password_msg").text("密码不能为空！");
			}
			else if($(".input_password").val().length < 6){
				$(".password_msg").text("密码不能小于6位数！");
			}
			else if(!/^\w+$/.test($(".input_password").val())){
				$(".password_msg").text("密码只能由数字、字母或下划线组成！");
			}
			else{
				$(".password_msg").text("");
			}
		})
		// 判断联系方式
		$(".input_lian").focusout(function(){
			if ($(".input_lian").val()=="") {
				$(".lian_msg").text("联系方式不能为空！");
			}
			else if(!/^1[34578]\d{9}$/.test($(".input_lian").val())){
				$(".lian_msg").text("请输入合法的手机号码！");
			}
			else{
				$(".lian_msg").text("");
			}
		})

		
		//注册前，判断所有选项是否为空
		$(".input_zhuce").click(function(){
			if ($(".input_xing").val()=="") {
				$(".xing_msg").text("姓名不能为空！");
			}
			else if(!/^[\u4e00-\u9fa5]+$/.test($(".input_xing").val())){
				$(".xing_msg").text("姓名只能为中文！");
			}
			else if($(".input_ni").val()=="") {
				$(".ni_msg").text("昵称不能为空！");
			}
			else if($(".input_ni").val().length < 4){
				console.log($(".input_ni").val().length);
				$(".ni_msg").text("昵称不能小于4位数！");
			}
			else if(!/^[\u4E00-\u9FA5\w\d]+$/.test($(".input_ni").val())){
				$(".ni_msg").text("昵称只能由中文、数字、字母或下划线组成！");
			}
			else if($(".input_password").val()=="") {
				$(".password_msg").text("密码不能为空！");
			}
			else if($(".input_password").val().length < 6){
				$(".password_msg").text("密码不能小于6位数！");
			}
			else if(!/^\w+$/.test($(".input_password").val())){
				$(".password_msg").text("密码只能由数字、字母或下划线组成！");
			}
			else if($(".input_lian").val()=="") {
				$(".lian_msg").text("联系方式不能为空！");
			}
			else if(!/^1[34578]\d{9}$/.test($(".input_lian").val())){
				$(".lian_msg").text("请输入合法的手机号码！");
			}
			else if($(".input_tou").val()=="") {
				$(".tou_msg").text("头像不能为空！");
			});
		
	</script>
</body>
</html>