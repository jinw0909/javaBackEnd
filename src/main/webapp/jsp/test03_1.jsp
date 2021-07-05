<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method - Form 태그</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
<!-- 
	BMI 수치
	키와 몸무게를 입력 받아서 BMI 수치를 계산하고 비만도를 표시하는 기능을 만드세요.
	키와 몸무게를 input으로 입력 받고 전달하는 form을 만들고 Get method 로 submit 하세요.
-->
<div class="container">
	<h1>체격 조건 입력</h1>
	<form action="/jsp/test03_2.jsp" class="d-flex align-items-end">
		<input type="text" name="height" class="form-control w-25" style="margin-right: 12px">cm
		<input type="text" name="weight" class="form-control w-25" style="margin: 0 12px"> kg
		<input type="submit" class="btn btn-primary text-white" value="계산" style="margin: 0 12px">
	</form>
</div>
	
</body>
</html>