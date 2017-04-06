<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改球员信息</title>

</head>
<body> 

<form id="playerForm" action="${pageContext.request.contextPath }/editPlayerSubmit.action" method="post" >
<input type="text" name="id" value="${liverpool.number }"/>
修改球员信息：
<table width="100%" border=1>
<tr>
	<td>${liverpool.name}</td>
</tr>
<tr>
	<td>进球数</td>
	<td><input type="text" name="goals" value="${liverpool.goals }"/></td>
</tr>
<tr>
	<td>助攻数</td>
	<td><input type="text" name="assists" value="${liverpool.assists }"/></td>
</tr>
<tr>
	<td>出场次数</td>
	<td><input type="text" name="round" value="${liverpool.round}"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="提交"/>
</td>
</tr>
</table>

</form>
</body>

</html>