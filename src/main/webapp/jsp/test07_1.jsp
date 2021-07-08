<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 검색</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>메뉴검색</h1>
		<form action="/jsp/test07_2.jsp" method="GET">
		<div class="">
			<input type="text" name="menu" class="form-control col-3">
			<label><input type="checkbox" value="4" name="point" class="col-3">4점 이하 제외</label>
		</div>
			<br>
			<input type="submit" value="검색" class="btn btn-success mt-3"> 
			
		</form>
	</div>
</body>
</html>