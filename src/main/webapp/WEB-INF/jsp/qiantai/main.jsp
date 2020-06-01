<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>兼职平台—首页</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css">
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">
</head>
<script type="text/javascript">
function person() {
	 var value=document.getElementById("span1").innerText;
	 window.location.href="${pageContext.request.contextPath}/personalCenter?"+"name="+value;
}
function person2() {
	 var value=document.getElementById("span1").innerText;
	 window.location.href="${pageContext.request.contextPath}/goPublishWork?"+"name="+value;
}
</script>
<body>
<div class="page">
	<div class="top">
		<div class="top_zhong">
			<div class="top_zhong_le">
			   <c:if test="${msg==null}">
				<p>请先登录</p>
				</c:if>
				<c:if test="${msg!=null}">
				<p>${msg.userName}欢迎您使用本平台</p>
				</c:if>
			</div>
			<div class="top_zhong_ri">
				<c:if test="${msg==null}">
					<ul class="top_zhong_ul01">
						<li><a href="${pageContext.request.contextPath}/qiantailogin" class="a_ping" target="_self"><span class="span_ping">平台信箱</span></a></li>
						<li><a href="${pageContext.request.contextPath}/qiantailogin" class="a_deng"><span class="span_deng" align="right">登录</span></a></li>
						<li><span class="span_xian"></span><a href="${pageContext.request.contextPath}/register" class="a_zhu"><span class="span_zhu">注册</span></a></li>
					</ul>
				</c:if>
				<c:if test="${msg!=null}">
					<ul class="top_zhong_ul02">
						<li><a href="${pageContext.request.contextPath}/gonggao" class="a_ping" target="_self"><span class="span_ping">平台信箱</span></a></li>
						<li>
							<a href="#" class="a_deng">
								<span class="span_deng" align="right" id="span1">${msg.userName}</span>
							</a>
							<ul class="top_zhong_ul03">
								<li><a href="#" onclick="person()"><span class="span_ul031" align="center">个人中心</span></a></li>
								<li><a href="#"onclick="person2()" target="_self"><span class="span_ul032" align="center">发布兼职</span></a></li>
								<li><a href="${pageContext.request.contextPath}/qiantailogin"><span class="span_ul034" align="center">退出登录</span></a></li>
							</ul>
						</li>
						<li>
							<span class="span_xian"></span>
							<span class="span_tou">
								<img src="${msg.userImg}" width="26" height="26">
							</span>
						</li>
					</ul>
				</c:if>
			</div>
		</div>
	</div>
	<div class="daohang" id="daohang">
		<div class="daohang_zhong">
			<div class="daohang_logo">
				<div class="daohang_logo01">
					<img src="${pageContext.request.contextPath}/img/titleLogo.png" width="100" height="60">
				</div>
			</div>
			<div class="daohang_find">
				<div class="daohang_find01">
					<input type="text" name="" class="input_find" id="input_find" placeholder="关键字：家教、传单"><span class="span_find"><span>查找</span></span>
				</div>
			</div>
			<div class="daohang_daohang">
				<ul>
					<li><a href="#" class="a_lun"><span class="span_lun">论坛交流</span></a></li>
					<li><a href="${pageContext.request.contextPath}/personalCenter" class="a_ge"><span class="span_ge">个人中心</span></a></li>
					<li><a href="${pageContext.request.contextPath}/gonggao" class="a_tai"><span class="span_tai">平台公告</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="q_work">
		<div class="q_work_zhong">
			<div class="q_work_zhong_s">
			</div>
			<ul class="q_work_zhong_z">
				<li class="q_li_work02"><a href="${pageContext.request.contextPath}/getWorkList.action" target="_blank" style=' text-align:center; text-decoration:none; color:#52cbc5'>全部兼职</a></li>
			</ul>
			<div class="q_work_zhong_x">
				<ul class="q_ul_work01">
					<c:forEach items="${work}" var="work">
						<li class="q_li_ul_work01">
						    <div class="q_div_work_t">
									<div class="q_div_work_to"><img src="${work.ptImgs}" width="60px" height="60px"></div>
							</div>
							<div class="q_div_work_b">
								<ul>
									<li class="q_li_work_b"><span class="q_span_work_b">主题：${work.ptTitle}</span></li>
									<li><span class="q_span_work_c">电话：${work.ptCallName}</span></li>
									<li>
									<span class="q_span_work_t">"${work.ptWorktime}" </span>
									<span class="q_span_work_s"><c:if test="${work.ptIsValidate == 1}">正常</c:if><c:if test="${work.ptIsValidate == 0}">失效</c:if></span>
									</li>
								</ul>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	/* //用户查找兼职
	$(".span_find span").click(function(){
		if($(".input_find").val()==""){
			alert("请输入搜索关键词！");
		}
		else{
			var work_str=$(".input_find").val();
			var url="${pageContext.request.contextPath}/findwork?workCategory=".concat(work_str);
			window.location.href=url;
		}
	}); */
</script>
</body>
</html>	