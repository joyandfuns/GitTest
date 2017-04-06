<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增球员信息</title>

</head>
<body>

<form id="playerForm" action="${pageContext.request.contextPath }/insertPlayerSubmit.action" method="post" >
    球员信息：
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
<tr>
	<td><input type="text" name="number"/></td>
    <td><input type="text" name="name"/></td>
	<td><input type="text" name="position"/></td>
	<td><input type="text" name="age"/></td>
	<td><input type="text" name="birthday"/></td>
	<td><input type="text" name="club"/></td>
	<td><input type="text" name="national"/></td>
	<td><input type="text" name="height"/></td>
	<td><input type="text" name="weight"/></td>
	<td><input type="text" name="goals"/></td>
	<td><input type="text" name="assists"/></td>
	<td><input type="text" name="round"/></td>
</tr>
<tr>
<td colspan="2" align="center"><input type="submit" value="提交"/>
</td>
</tr>
</table>

</form>
</body>

</html>