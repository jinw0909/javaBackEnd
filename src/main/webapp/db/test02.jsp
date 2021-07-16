<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.jinw0909.common.MysqlService"%>
<%@ page import="java.util.*" %>    
<%@ page import="java.sql.ResultSet" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	String selectQuery = "SELECT * FROM `favorites` ORDER BY `id` DESC;";
	
	ResultSet resultSet = mysqlService.select(selectQuery);
%>
	
	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트 주소</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<% while (resultSet.next()) { %>
				<tr>
					<td><%=resultSet.getString("name")%></td>
					<td><%=resultSet.getString("url")%></td>
					<td><a href="/db/test02_delete?id=<%=resultSet.getInt("id")%>" class="btn btn-danger">삭제</a></td>
				</tr>
			<% } %>
			</tbody>
		</table>
	</div>
	
</body>
</html>