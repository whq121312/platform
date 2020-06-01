<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>未审核兼职列表</title>
</head>
<body>
  <table border="1">
  <tr>
    <td>兼职Id</td>
    <td>兼职标题</td>
    <td>发布者Id</td>
    <td>兼职所需人数</td>
    <td>工作地点</td>
    <td>工作时间</td>
    <td>工作内容</td>
    <td colspan="2">操作</td>
  </tr>
	<c:forEach items="${msg}" var="data">
	  <c:if test="${ data.ptIsValidate==0}">
		<tr>  
		   <td width="80px"> ${data.ptId } </td> 
		    <td width="140px">${data.ptTitle }</td>  
		    <td width="140px">${data.ptIssueId}</td>  
		    <td width="140px">${data.ptPeopleCount }</td>
		    <td width="140px">${data.ptAddress }</td>
		    <td width="140px">${data.ptWorktime }</td>
		    <td width="140px">${data.ptDescribe }</td>
		    <td width="140px"><a href="${pageContext.request.contextPath}/work?id=${data.ptId }">审核成功</a></td>
		     <td width="140px"><a href="${pageContext.request.contextPath}/deletework?id=${data.ptId }">审核失败</a></td>
		</tr> 
	 </c:if>
	</c:forEach>
</table>	
</body>
</html>