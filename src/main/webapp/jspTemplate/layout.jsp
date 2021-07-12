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
<style>
	#wrap { width: 1200px; height: 800px; margin: auto;}
	header { height: 100px; }
	nav { height: 50px; }
	section { height: 400px; }
	footer { height: 80px; } 
</style>

</head>
<body>

	<div id="wrap" class="bg-secondary">
		<header class="bg-info">
			<h1>Layout Test</h1>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
				<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
			</ul>
		</nav>
		<section class="bg-success">
			<img width="200px" src="https://cdn.pixabay.com/photo/2021/06/29/06/14/water-drops-6373296_1280.jpg">
			<div>
				예쁜 풍경 사진
			</div>
		</section>
		<footer class="bg-danger">
			Copyright 2016. 이름 All Pictures Cannot Be Copied Without Permission.
		</footer>
	</div>

</body>
</html>