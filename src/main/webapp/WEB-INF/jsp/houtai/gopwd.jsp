<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Modify" method="post">
 <table border="0" align="center" width="400px">
    <tr>
      <td>用户</td>
      <td><input type="text" value="${msg.adminName}" name="adminname"></td>
    </tr>
    <tr>
      <td>原密码</td>
      <td><input type="text" value="${msg.adminPassword}" disabled="disabled"></td>
    </tr>
    <tr>
       <td>新密码</td>
       <td><input type="password" name="pwd"/></td>
    </tr>
    <tr>
       <td>确认新密码</td>
       <td><input type="password" name="pwd2"/></td>
    </tr>
    <tr>
       <td rowspan="2" align="center"><input type="submit" value="修改密码"  onclick="pwd()"/></td>
    </tr>
 </table>
</form>
</body>
</html>