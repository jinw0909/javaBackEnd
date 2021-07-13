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
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<%@ include file="data.jsp" %>
		<% int id = Integer.parseInt(request.getParameter("id")); %>
		<section>
			<h3>곡 정보</h3>
			<article class="d-flex border border-success">
			<% for (Map<String, Object>music : musicList) { 
			 if ((int)music.get("id") == id) { %>
				<div class="profile-img col-3 p-3">
					<img src="<%=music.get("thumbnail")%>" />	
				</div>
				<div class="profile-desc col-9 p-3">
					<h5 class="display-3 m-0"><%=music.get("title")%></h5>
					<p class="display-8 text-success m-0"><%=music.get("singer")%></p>
					<table>
						<tr>
							<td>앨범</td>
							<td><%=music.get("album")%></td>
						</tr>
						<tr>
							<td>재생시간</td>
							<td><%=(int)music.get("time") / 60 %> : <%=(int)music.get("time") % 60 %></td>
						</tr>
						<tr>
							<td>작곡가</td>
							<td><%=music.get("composer")%></td>
						</tr>
						<tr>
							<td>작사가</td>
							<td><%=music.get("lyricist")%></td>
						</tr>
					</table>
				</div>
			 <% }
			} %>
			</article>
			<article>
				<h3 class="mt-3">가사</h3>
				<hr/>
				<small>가사 정보 없음</small>
				<hr/>
			</article>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>