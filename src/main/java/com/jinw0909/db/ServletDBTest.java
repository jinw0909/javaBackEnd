package com.jinw0909.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jinw0909.common.MySqlService;

@WebServlet("/db/test/")
public class ServletDBTest extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// mysql 접속 url
			// mysql 접 id
			// mysql 접속 비밀번호
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/JAVA",
					"root",
					"worldcup1989");
			
			// 쿼리를 수행하기 위한 객체
			Statement statement = conn.createStatement();
//			
//			String insertQuery = "INSERT INTO `user` \n"
//					+ "(`name`, `yyyymmdd`, `hobby`, `introduce`, `createdAt`, `updatedAt`, `email`)\n"
//					+ "VALUES\n"
//					+ "('폴리', '19890909', '멍때리기', '자기소개입니다', now(), now(), 'jinw0909@gmail.com');";
//			int count = statement.executeUpdate(insertQuery);
//			out.println("인서트 개수" + count);
			
			String selectQuery = "SELECT * FROM `user`;";
			ResultSet result = statement.executeQuery(selectQuery);
			
			while(result.next()) {
				out.println(result.getInt("id"));
				out.println(result.getString("name"));
				out.println(result.getString("hobby"));
			} 
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		out.println("DB 테스트");
	}	
				
}
