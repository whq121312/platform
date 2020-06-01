<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人资料</title>
	<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/img/titleLogo.png">	
</head>
<body>
				 <form action="${pageContext.request.contextPath}/xiugai" method="post">
					<table border="0" align="center" width="400px">
					  <tr>
					    <td>头像：</td>
					    <td> ${msg.userImg}</td>
					   </tr>
					  <tr>
					    <td>昵称</td>
					    <td> <input type="text" value="${msg.userName}" name="username" /></td>
					   </tr>
					   <tr>
					    <td>账号：</td>
					    <td><input type="text" value="${msg.userId}" name="userId" /> </td>
					   </tr>
					   <tr>
					    <td>姓名：</td>
					    <td><input type="text" value="${msg.realname}" name="realname" /> </td>
					   </tr>
					   <tr>
					    <td>性别：</td>
					    <td><input type="text" value="${msg.userSex}" name="userSex" /></td>
					   </tr>
					   <tr>
					    <td>类型：</td>
					    <td><input type="text" value="${msg.userCategory}" name="userCategory" /></td>
					   </tr>
					   <tr>
					    <td>电话：</td>
					    <td><input type="text" value="${msg.userMobile}" name="userMobile" /></td>
					   </tr>
					   <tr>
                          <td rowspan="2"> <input type="submit" value="编辑资料"  align="center"/></td>
                       </tr>
					</table>
				  </form>				
</body>
</html>