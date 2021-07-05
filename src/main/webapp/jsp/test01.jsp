<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int[] scores = {80, 90, 100, 95, 80}; 
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
	%>
	<%-- 01. 점수들의 평균 구하기 --%>
	<h3>점수 평균은 <%=sum / (double)scores.length%>점입니다.</h3>
	<br>
	
	<%-- 02. 채점 결과 --%>
	<% 
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int result = 0;
		for (String item: scoreList) {
			if (item.equals("O")) {
				result += 10;
			}
		}
	%>
	<h3>채점 결과는 <%=result %>점입니다.</h3>
	<br>
	
	<%-- 03. 1부터 n까지의 합계를 구하는 함수 --%>
	<%! 
		public int sum(int N) {
			int temp = 0;
			for (int i = 1; i <= N; i++) {
				temp += i;
			}
			return temp;
		} 
	%>
	<h3>1에서 50까지의 합은 <%=sum(50) %></h3>
	<br>
	
	<%-- 04. 나이 구하기 --%>
	<% 
		String birthDay = "20010820";
		int birthInt = Integer.parseInt(birthDay);
		int year = birthInt / 10000;
		int age = 2021 - year + 1;
	%>
	<h3><%=birthDay %> 의 나이는 <%=age %>살 입니다.</h3>
	
	
</body>
</html>