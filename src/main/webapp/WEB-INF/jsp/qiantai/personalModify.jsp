<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改个人信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/xiugai2" methid="post">
	<table border="0" align="center" width="400px">
	    <tr> 
		    <td>账号</td> 
		    <td><input type="text" value="${msg.userId }" name="userId" readonly="readonly" />  </td> 
		</tr> 
		<tr> 
		    <td>用户名</td> 
		    <td><input type="text" value="${msg.userName }" name="username" />  </td> 
		</tr>
		<tr> 
		    <td>用户手机号</td> 
		    <td><input type="text" value="${msg.userMobile }" name="userMoblie" /> </td> 
		</tr> 
		<tr> 
		    <td>用户密码</td> 
		    <td><input type="password" value="${msg.userPassword }" name="userPassword" />  </td> 
		</tr>
		<tr> 
		    <td>用户类别</td> 
		    <td>
		                <select name="user_category">
						<option value="学生" <c:if test="${msg.userCategory == '学生'}">selected = "selected"</c:if>>学生
						<option value="商家" <c:if test="${msg.userCategory == '商家'}">selected = "selected"</c:if>>商家
						</select>
			</td> 
		</tr>
		<tr> 
		    <td>用户性别</td> 
		    <td> 
		       <input name="sex" type="radio" value="男" <c:if test="${msg.userSex == 男}">checked="checked"</c:if>>男
			   <input name="sex" type="radio" value="女" <c:if test="${msg.userSex == 女}">checked="checked"</c:if>>女
			 </td> 
		</tr>
		<tr> 
		    <td>用户真名</td> 
		    <td> <input type="text" value="${msg.realname}" name="realname" /> </td> 
		</tr>
		<tr> 
		    <td>用户头像</td> 
		    <td><input name="image" type="file" class="input_tou"> </td> 
		</tr> 
		<tr>
                          <td rowspan="2"> <input type="submit" value="提交"  align="center"/></td>
        </tr>
	</table>
</form>
</body>
</html>