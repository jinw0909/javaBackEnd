<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java 제어문 활용</title>
</head>
<body>
	<%
		// Map 성적관리
		// {"korean"=85, "math"=90}
	
		Map<String, Integer> scoreMap = new HashMap<>();
		scoreMap.put("korean", 85);
		scoreMap.put("english", 72);
		scoreMap.put("math", 90);
		scoreMap.put("science", 100);
	%>
	
	<table border="1">
	
		
		<% Set<String> keys = scoreMap.keySet(); %>
		<%	for (String key: keys) { %>
			<tr>
				<td>
					<% if (key.equals("korean")) { %>
						국어
					<% } else if (key.equals("math")){ %>
						수학
					<% } %>
				</td>
				<td><%=scoreMap.get(key) %></td>
			</tr>
		<% } %>
		
	</table>
</body>
</html>