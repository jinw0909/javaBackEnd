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
	a { text-decoration : none;}
</style>
</head>
<body>

	

	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<%@ include file="data.jsp" %>
		<section>	
			<article class="d-flex border border-success">
				<div class="profile-img col-3 p-3">
					<img src="<%=artistInfo.get("photo")%>" />	
				</div>
				<div class="profile-desc col-9 p-3">
					<h5 class="display-7 m-0 mb-2"><%= artistInfo.get("name")%></h5>
					<p class="display-8 m-0"><%= artistInfo.get("agency")%></p>
					<p class="display-10 m-0"><%= artistInfo.get("debute")%> 데뷔</p>
				</div>
			</article>
			<article>
				<h3 class="mt-3">곡 목록</h3>
				<hr/>
				<table class="table">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<% for (Map<String, Object>data : musicList) { %>
						<tr>
							<td><%= data.get("id")%></td>
							<td><a href="/jspTemplate/test02/test02_detail.jsp?id=<%=data.get("id")%>"><%= data.get("title")%></a></td>
							<td><%= data.get("album")%></td>
						</tr>
							
						<% } %>
					</tbody>
				</table>
			</article>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>