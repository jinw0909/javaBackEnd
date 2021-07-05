<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 출력</title>
<style>
	a { border-radius: 4px;} 
	#confirmTime { padding: 8px; background: blue}
	#confirmDate { padding: 8px; background: green}
</style>
</head>
<body>
	<h1>날짜, 시간 링크</h1>
	<a id="confirmTime" href="/jsp/test02_2.jsp?data=time">현재 시간 확인</a>
	<a id="confirmDate" href="/jsp/test02_2.jsp?data=date">현재 날짜 확인</a>
</body>
</html>