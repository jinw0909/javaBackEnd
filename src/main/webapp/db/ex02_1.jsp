<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<form method="get" action="/db/ex02_insert">
			<label>이름<input type="text" name="name" class="form-control"></label>
			<label>생년월일<input type="text" name="yyyymmdd" class="form-control"></label>
			<br>
			<label>소개</label>
			<textarea rows="5" col="50" name="introduce" class="form-control"></textarea>
			<br>
			<label>이메일<input type="text" name="email" class="form-control"></label>
			<input type="submit" value="추가" class="btn btn-info">
		</form>
	</div>
</body>
</html>