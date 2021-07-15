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

@WebServlet("/db/test")
public class ServletDatabaseTest extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");	
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/java",
					"root",
					"worldcup1989");
			Statement statement = conn.createStatement();

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
