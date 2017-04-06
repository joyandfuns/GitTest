<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>球员</title>
</head>
<body> 
<form action="${pageContext.request.contextPath }/queryPlayer2.action" method="post">
查询条件：
<table width="100%" border=1>
<tr>
<td><input type="submit" value="查询"/></td>
</tr>
</table>
球员列表：
<table width="100%" border=1>
<tr>
	<td>球员号码</td>
	<td>姓名</td>
	<td>出生日期</td>
	<td>位置</td>
	<td>国籍</td>
</tr>
<c:forEach items="${playerList }" var="player">
<tr>
	<td>${player.number }</td>
	<td>${player.name }</td>
	<td><fmt:formatDate value="${player.birthday}" pattern="yyyy-MM-dd"/></td>
	<td>${player.position }</td>
	<td>${player.national }</td>
</tr>
</c:forEach>

</table>
</form>
</body>

</html>