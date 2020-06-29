<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>註冊</title>
</head>
<body bgcolor="#DCAB93">

<table width="600" align="center" border="0">
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="title.jsp" %>
	<tr bgcolor="#F0DBD1">
		<td height="300">
			
			<form action="addServlet" method="post">
				<table width=450 align="center" border=1>
					<tr>
						<td colspan=2 align=center><h3>會員註冊</h3>
					<tr>
						<td align=center>姓名
						<td><input type="text" name="name">
					<tr>
						<td align=center>帳號
						<td><input type="text" name="username">
					<tr>
						<td align=center>密碼
						<td><input type="password" name="password">
					<tr>
						<td align=center>電話
						<td><input type="text" name="phone">
					<tr>
						<td align=center>地址
						<td><input type="text" name="address">
					<tr>
						<td colspan=2 align="center"><input type="submit" value="送出">
									  			     <input type="reset" value="重設">
			
			
				</table>
			</form>
			
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="end.jsp" %>


</table>

</body>
</html>