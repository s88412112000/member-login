<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>���U</title>
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
						<td colspan=2 align=center><h3>�|�����U</h3>
					<tr>
						<td align=center>�m�W
						<td><input type="text" name="name">
					<tr>
						<td align=center>�b��
						<td><input type="text" name="username">
					<tr>
						<td align=center>�K�X
						<td><input type="password" name="password">
					<tr>
						<td align=center>�q��
						<td><input type="text" name="phone">
					<tr>
						<td align=center>�a�}
						<td><input type="text" name="address">
					<tr>
						<td colspan=2 align="center"><input type="submit" value="�e�X">
									  			     <input type="reset" value="���]">
			
			
				</table>
			</form>
			
	<tr bgcolor="#7B4428">
		<td align="center"><%@include file="end.jsp" %>


</table>

</body>
</html>