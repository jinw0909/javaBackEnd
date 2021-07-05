<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 연습</title>
</head>
<body>
	<%
		int sum = 0;
	for  (int i = 1; i <= 10; i++) {
		sum += i;
	}
	%>
	<!--  여기 주석 -->
	<%-- jsp 주석 안보이는 주석 --%>
	<b>합계 : </b> <u><%=sum %></u>
	
	<input type="text" value="<%=sum %>">
	
	<%
		List<String> animal = new ArrayList<>();
		animal.add("dog");
	%>
	
	<b><%=animal.get(0) %></b>
	
	<%-- 정의 --%>
	
	<%!
		private int num = 100;
		public String getHelloWorld() {
			return "Hello World";
		}
	%>
	<%=getHelloWorld() %>
	<%=num * 10 + 123 %>
	
	
</body>
</html>