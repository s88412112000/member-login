<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>����</title>
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
					<td align="center"><h2>�n�J</h2>
				<tr>
					<td align="center">�b���G<input type="text" name="username">
				<tr>
					<td align="center">�K�X�G<input type="password" name="password">
				<tr>
					<td align="center">
						<input type="submit" value="�n�J">
						<a href="addmember.jsp">���U</a> 
									   			
				</form>
			
			
			</table>
			
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="end.jsp" %>


</table>

</body>
</html>