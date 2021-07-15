package com.jinw0909.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jinw0909.common.MySqlService;

@WebServlet("/db/ex01")
public class ServletDBEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		MySqlService mysqlService = MySqlService.getInstance();
		mysqlService.connection();
		
//		String query = "INSERT INTO `used_goods`\n"
//				+ "(`title`, `price`, `description`, `sellerId`, `createdAt`, `updatedAt`)\n"
//				+ "VALUES\n"
//				+ "('고양이 간식 팝니다', 2000, '고양이 입맛이 까다로워서', 5, now(), now());";
//		
//		int count = 0;
//		
//		try {
//			count = mysqlService.update(query);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
//		
//		out.println(count + "행 삽입");
		
		String query = "SELECT * FROM `used_goods`";
		
		try {
			ResultSet resultSet = mysqlService.select(query);
			while (resultSet.next()) {
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
			}
			mysqlService.disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}	
}
