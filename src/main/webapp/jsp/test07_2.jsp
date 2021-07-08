<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 검색</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
</head>
<body>
	<% List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    
    double point = 0;
    String menu = request.getParameter("menu");
   	try {
	    point = Integer.parseInt(request.getParameter("point").trim());
   	} catch (NullPointerException e) {
   		point = 0;
   	} %>
    
    <div class="container">
	    <h1>검색 결과</h1>
	    <table>
	    	<thead>
		    	<tr>
		    		<th>메뉴</th>
		    		<th>상호</th>
		    		<th>별점</th>
		    	</tr>
	    	</thead>
	    	<tbody>
	    	
				<% for (Map<String, Object> item : list) { %>
						<% if (menu.equals(item.get("menu")) && (double)item.get("point") > point) { %>
						<tr>
							<td><%=item.get("menu")%></td>
							<td><%=item.get("name")%></td>
							<td><%=item.get("point")%></td>
						</tr>
						<% } %>
				<% } %>
	   		</tbody>
	    </table>
    </div>
</body>
</html>