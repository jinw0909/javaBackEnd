<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2 class="mt-3">즐겨찾기 추가</h2>
		<form method="post" action="/db/test02_insert">
			<label>사이트명:<input type="text" name="name" class="form-control mb-3"></label>
			<br>
			<label class="w-50">사이트주소:<input type="text" name="url" class="form-control col-6 mb-3"></label>
			<br>
			<input type="submit" class="btn btn-success" value="추가">
		</form>
	</div>
</body>
</html>