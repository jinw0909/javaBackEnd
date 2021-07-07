<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 검색</title>
</head>
<body>
	<h1>메뉴검색</h1>
	<form action="/jsp/test07_2.jsp" method="GET">
		<input type="text" name="menu">
		<label><input type="checkbox" name="point"></label>
		<input type="submit" value="검색"> 
		
	</form>
</body>
</html>