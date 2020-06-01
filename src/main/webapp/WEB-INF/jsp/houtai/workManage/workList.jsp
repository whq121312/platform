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
<title>兼职列表</title>
</head>
<body>
  <table border="1"  cellspacing="0" cellpadding="0">
  <tr>
    <td>兼职Id</td>
    <td>兼职标题</td>
    <td>发布者Id</td>
    <td>兼职所需人数</td>
    <td>工作地点</td>
    <td>工作时间</td>
    <td>工作内容</td>
    <td colspan="2" align="center">操作</td>
  </tr>
	<c:forEach items="${msg}" var="data">
	  <c:if test="${ data.ptIsValidate==1}">
		<tr>  
		   <td width="80px" align="center"> ${data.ptId } </td> 
		    <td width="140px" align="center">${data.ptTitle }</td>  
		    <td width="140px" align="center">${data.ptIssueId}</td>  
		    <td width="140px" align="center">${data.ptPeopleCount }</td>
		    <td width="140px" align="center">${data.ptAddress }</td>
		    <td width="140px" align="center">${data.ptWorktime }</td>
		    <td width="140px" align="center">${data.ptDescribe }</td>
		    <td width="140px" align="center"><a style='color:#52cbc5;' href="#">编辑</a></td>
		     <td width="140px" align="center"><a style="color:orange;" href="${pageContext.request.contextPath}/deletework2?id=${data.ptId }">禁用</a></td>
		</tr> 
	 </c:if>
	</c:forEach>
</table>	
</body>
</html>