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
	img { width: 100%; }
 	table { font-size: 8px;}
</style>
</head>
<body>
	<div class="container">
		<header class="d-flex">
			<div class="logo col-2 d-flex justify-content-center align-items-center text-success">
				<h1>Melong</h1>
			</div>
			<div class="search col-10 d-flex align-items-center p-5">
				<form>
					<div class="input-group">
						<input type="text" class="form-control col-9">
						<div class="input-group-append">
							<button type="submit" class="button bg-info form-control col-3 text-white">검색</button>
						</div>
					</div>
				</form>
			</div>
		</header>
		<nav>
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜롱챠트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark">뮤직어워드</a></li>
			</ul>
		</nav>
		<section>
			<h3>곡 정보</h3>
			<article class="d-flex border border-success">
				<div class="profile-img col-3 p-3">
					<img src="http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG" />	
				</div>
				<div class="profile-desc col-9 p-3">
					<h5 class="display-3 m-0">삐삐</h5>
					<p class="display-8 text-success m-0">아이유</p>
					<table>
						<tr>
							<td>앨범</td>
							<td>삐삐</td>
						</tr>
						<tr>
							<td>재생시간</td>
							<td>3 :14</td>
						</tr>
						<tr>
							<td>작곡가</td>
							<td>이종훈</td>
						</tr>
						<tr>
							<td>작사가</td>
							<td>아이유</td>
						</tr>
					</table>
				</div>
			</article>
			<article>
				<h3 class="mt-3">가사</h3>
				<hr/>
				<small>가사 정보 없음</small>
				<hr/>
			</article>
		</section>
		<footer> 
			<small>copyright 2021. melong All Rights Reserved</small>
		</footer>
	</div>
</body>
</html>