<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
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

<% 
   
   Calendar cal = Calendar.getInstance(); 
   SimpleDateFormat format = new SimpleDateFormat("d");
   SimpleDateFormat formatToMonth = new SimpleDateFormat("yyyy-MM");
   
   String title = formatToMonth.format(cal.getTime());
   
   Date date = format.parse("2010-10");
   cal.setTime(date);
   out.println(cal);
   out.println(cal.get(Calendar.DAY_OF_WEEK));
   
   

   %>

<div class="container">
	<h1><%=title%></h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th class="text-danger">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th>토</th>
			</tr>
		</thead>
		<tbody>
		<% int day = 1; 
		   int lastday = cal.getActualMaximum(Calendar.DAY_OF_MONTH); %>
		<% for (int i = 0; i < 6; i++) { %>
			<tr>
				<% for (int j = 1; j <= 7; j++) { %>
				<td class="display-4"><%=day%></td>
				
				<% if (day == lastday) {
					break;
				}
				day++;
				} %>
			</tr>
			<% if (day == lastday) {
					break;
				} 
			} %>
		</tbody>
	</table>
</div>

</body>
</html>