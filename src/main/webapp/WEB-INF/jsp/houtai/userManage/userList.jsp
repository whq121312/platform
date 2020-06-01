<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<style type="text/css">
  a{
  text-decoration: none;
  }
  body{
  background-color:white;
  }
  table{
  border-color:gary;
  }
</style>
<title>用户列表</title>
</head>
<body>
  <table border="1" align="center" width="400px">
  <tr>
    <td>用户Id</td>
    <td>用户名</td>
    <td>用户手机号</td>
    <td>用户类别</td>
    <td>用户性别</td>
    <td>用户真名</td>
    <td>操作</td>
  </tr>
	<c:forEach items="${users}" var="data">  
	<tr>  
	   <td> ${data.userId } </td> 
	    <td>${data.userName }</td>  
	    <td>${data.userMobile}</td>  
	    <td>${data.userCategory }</td>
	    <td>${data.userSex }</td>
	    <td>${data.realname }</td>
	    <td><a href="${pageContext.request.contextPath}/deleteuser?method=${data.userId }">删除</a></td>
	</tr>  
	</c:forEach>
</table>	
</body>
</html>