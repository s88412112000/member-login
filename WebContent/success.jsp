<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>�n�J���\</title>
</head>

<body bgcolor="#DCAB93">

<%
	String username=(String)session.getAttribute("user");
%>

<table width="600" align="center" border="0">
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="title.jsp" %>
	<tr bgcolor="#F0DBD1">
		<td height="300">
			<font size="4">
				<table  width=300 align="center">
					<tr>
						<td><h3><%=username %>�w��A</h3>
					<tr>
						<td><a href="query.jsp">1)�d��</a><br>
					<tr>
						<td><a href="delete.jsp">2)�R��</a><br>
				</table>
			</font>
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="end.jsp" %>


</table>

</body>
</html>