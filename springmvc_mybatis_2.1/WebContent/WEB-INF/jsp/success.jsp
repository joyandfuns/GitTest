<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成功提示</title>
</head>
<body>
操作成功！
<form action="${pageContext.request.contextPath }/queryPlayer2.action" method="post">
	<table width="100%" border=1>
	<tr>
    <td><input type="submit" value="返回"/></td>
    </tr>
	<tr>
	<td>${liverpool.number }</td>
	<td>${liverpool.goals }</td>
	<td>${liverpool.assists }</td>
	<td>${liverpool.round }</td>
    </tr>
	</table>
</form>
</body>
</html>