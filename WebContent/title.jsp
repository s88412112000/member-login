<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>title</title>
</head>
<body>

<%
 Date d=new Date();
%>

<font color="white">
<h2>GJUN�|���޲z�t��</h2><br>
<%=d.getYear()+1900 %>�~<%=d.getMonth()+1 %>��<%=d.getDate() %>��
</font>
</body>
</html>