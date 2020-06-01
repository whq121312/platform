<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>发布兼职</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/publish_work.css">
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
	
</head>
<body>
	<div align="center">
		<div>
			<div>
				<form class="form_work" action="#" method="post">
					<h2 align="center">发布招聘兼职</h2><br>
					<span align="right">兼职标题：</span><input type="text" name="PtTitle" class="in input_biao" maxlength="15" placeholder="请输入兼职标题"><br>
					<span class="msg biao_msg"></span><br>
					<span align="right">联系方式：</span><input type="text" name="PtCall" class="in input_call" maxlength="11" placeholder="请输入联系方式"><br>
					<span class="msg call_msg"></span><br>
					<span align="right">联系人姓名：</span><input type="text" name="PtCallName" class="in input_call" maxlength="11" placeholder="请输入联系人姓名"><br>
					<span align="right">所需人数：</span><input type="text" name="PtPeopleCount" class="in input_biao" maxlength="15" placeholder="请输入所需人数"><br>
					<span align="right">工作内容：</span><textarea name="PtDescribe" class="input_work" maxlength="500" placeholder="请输入兼职内容"></textarea><br>
					<span class="msg work_msg"></span><br>
					<span align="right">工作报酬：</span><input type="text" name="PtPayoff" class="in input_biao" maxlength="15" placeholder="请输入工作报酬"><br>
					<span align="right">工作地点：</span><input type="text" name="PtAddress" class="in input_biao" maxlength="15" placeholder="请输入工作地点"><br>
					<span align="right">工作时间：</span><input type="text" name="PtWorktime" class="in input_biao" maxlength="15" placeholder="请输入工作时间"><br>
					<span align="right">发布人：</span><input type="text" name="PtIssueId" value="${id}" class="in input_call" maxlength="11" disabled="disabled"><br>
					<span align="right">性别要求：</span><input name="sex" type="checkbox" value="男">男<input name="sex" type="checkbox" value="女">女<br>
					<span align="right"> 兼职类别：</span><select name="PtType" class="in input_user">
					<option value="传单派发">传单派发
					<option value="设计">设计
					<option value="家教">家教
					<option value="会计">会计
					<option value="服务员">服务员
					<option value="促销">促销
					<option value="其他">其他
					</select><br><br>
					<span align="right">兼职图片：</span><input type="file" name="PtImgs" class="input_image"><br>
					<span class="msg image_msg"></span><br>
			        <input type="button" onclick="person()"  value="立即发布">&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/qiantaimain" style='text-decoration:none'>返回首页</a>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		var headerImage = '';
		// 判断标题
		$(".input_biao").focusout(function(){
			if ($(".input_biao").val()=="") {
				$(".biao_msg").text("标题不能为空！");
			}
			else{
				$(".biao_msg").text("");
			}
		})
		// 判断联系方式
		$(".input_call").focusout(function(){
			if ($(".input_call").val()=="") {
				$(".call_msg").text("联系方式不能为空！");
			}
			else if(!/^1[34578]\d{9}$/.test($(".input_call").val())){
				$(".call_msg").text("请输入合法的手机号码！");
			}
			else{
				$(".call_msg").text("");
			}
		})
		// 判断内容
		$(".input_work").focusout(function(){
			if ($(".input_work").val()!="") {
				$(".work_msg").text("");
			}else{
				$(".work_msg").text("内容不能为空！");
			}
		})
		function person(){
			var title=$('input[name="PtTitle"]').val();
			var call=$('input[name="PtCall"]').val();
			var callname=$('input[name="PtCallName"]').val();
			var count=$('input[name="PtPeopleCount"]').val();
			var describe=$('textarea[name="PtDescribe"]').val();
			var payoff=$('input[name="PtPayoff"]').val();
			var address=$('input[name="PtAddress"]').val();
			var time=$('input[name="PtWorktime"]').val();
			var sex=$('input[name="sex"]').val();
			var type=$('select[name="PtType"]').val();
			var img=$('input[name="PtImgs"]').val();
			var name=$('input[name="PtIssueId"]').val();
			window.location.href="${pageContext.request.contextPath}/fabu?"+"title="+title+"&call="+call+"&callname="+callname+"&count="+count+"&describe="+describe+"&payoff="+payoff+"&address="+address+"&time="+time+"&sex="+sex+"&type="+type+"&img="+img+"&name="+name;
		}
	</script>
</body>
</html>