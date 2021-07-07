<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달의 민족 검색</title>
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
    
    String name = request.getParameter("name");
    String point = request.getParameter("point"); %>
    
    <% out.println(name); %>
    <% out.println(point); %>
    
    <h1>검색 결과</h1>
    <table>
    	<tr>
    		<th>메뉴</th>
    		<th>상호</th>
    		<th>별점</th>
    	</tr>
    	
		<% for (Map<String, Object> item : list) { %>
				<tr>
					<td><%=item.get("name")%></td>
					<td><%=item.get("menu")%></td>
					<td><%=item.get("point")%></td>
				</tr>
		<% } %>
   	
    </table>
</body>
</html>