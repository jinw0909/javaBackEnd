<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
<style>
	.container { width: 800px; height: 800px; margin: auto;}
	header { height: 100px; }
	nav { height: 50px; }
	footer { height: 80px; } 
</style>
</head>
<body>
	<div class="container">
		<header class="d-flex">
			<div class="logo col-2 d-flex justify-content-center align-items-center text-success">
				<h1>Melong</h1>
			</div>
			<div class="search col-8 d-flex justify-content-center align-items-center">
				<form>
					<div class="input-group d-flex">
						<input type="text" class="form-control col-8">
						<button type="submit" class="button bg-info form-control col-4">검색</button>
					</div>
				</form>
			</div>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link">뮤직어워드</a></li>
			</ul>
		</nav>
		<section class="d-flex">
			<div class="profile-img col-3">
				<img src="https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fc92d9ebceb03cdd9ae4ff0093f88e0e7bbe21d3251555878b233fa2a5f6af14544c8dd26f4cb608d0b0101c91fc37dce">	
			</div>
			<div class="profile-desc col-9">
				<h1>아이유</h1>
				<h3>EDAM ENTERTAINMENT</h3>
				<h3>2008데뷔</h3>
			</div>
		</section>
		<footer></footer>
	</div>
</body>
</html>