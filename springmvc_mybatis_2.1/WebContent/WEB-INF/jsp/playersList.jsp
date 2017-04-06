<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>利物浦球员</title>
</head>
<body> 
<form action="${pageContext.request.contextPath }/queryPlayer.action" method="post">
查询条件：
<table width="100%" border=1>
<tr>
<td><input type="submit" value="查询"/></td>
</tr>
<tr>
<td><a href="${pageContext.request.contextPath }/insertPlayer.action?}">新增</a></td>
</tr>
</table>
球员列表：
<table width="100%" border=1>
<tr>
	<td>球员号码</td>
	<td>姓名</td>
	<td>位置</td>
	<td>年龄</td>
	<td>出生日期</td>
	<td>俱乐部</td>
	<td>国籍</td>
	<td>身高</td>
	<td>体重</td>
	<td>进球</td>
	<td>助攻</td>
	<td>场次</td>
</tr>
<c:forEach items="${playersList }" var="player">
<tr>
	<td>${player.number }</td>
	<td>${player.name }</td>
	<td>${player.position }</td>
	<td>${player.age }</td>
	<td><fmt:formatDate value="${player.birthday}" pattern="yyyy-MM-dd"/></td>
	<td>${player.club }</td>
	<td>${player.national }</td>
	<td>${player.height }</td>
	<td>${player.weight }</td>
	<td>${player.goals }</td>
	<td>${player.assists }</td>
	<td>${player.round }</td>
	<td><a href="${pageContext.request.contextPath }/editPlayer.action?id=${player.number}">修改</a></td>
	<td><a href="${pageContext.request.contextPath }/deletePlayer.action?id=${player.number}">删除</a></td>
</tr>
</c:forEach>

</table>
</form>
</body>

</html>