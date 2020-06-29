<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>首頁</title>
</head>
<body bgcolor="#DCAB93">

<table width="600" align="center" border="0">
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="title.jsp" %>
	<tr bgcolor="#F0DBD1">
		<td height="300" valign="top">
			
			<table width="300" align="center" >
				<form action="loginServlet" method="post">
				<tr>
					<td align="center"><h2>登入</h2>
				<tr>
					<td align="center">帳號：<input type="text" name="username">
				<tr>
					<td align="center">密碼：<input type="password" name="password">
				<tr>
					<td align="center">
						<input type="submit" value="登入">
						<a href="addmember.jsp">註冊</a> 
									   			
				</form>
			
			
			</table>
			
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="end.jsp" %>


</table>

</body>
</html>