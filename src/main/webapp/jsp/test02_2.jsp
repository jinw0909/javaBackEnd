<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
	<%	
		String dataType;
		if (request.getParameter("data").equals("time")) {
			dataType = "time";
		} else {
			dataType = "date";
		}
		
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 M월 d일");
		SimpleDateFormat timeFormat = new SimpleDateFormat("hh시 mm분 ss초");
		
		String view;
		if (dataType.equals("time")) {
			view = "현재 시간 " + dateFormat.format(now);
		} else {
			view = "오늘 날짜 " + timeFormat.format(now);
		}
		
	%>
	<h1><%=view %></h1>
	
</body>
</html>