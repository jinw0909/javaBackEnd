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

@WebServlet("/db/test01")
public class ServletDBTest01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		MySqlService mysqlService = MySqlService.getInstance();
		mysqlService.connection();
		
		String insertQuery = "INSERT INTO `real_estate`\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\n"
				+ "VALUES\n"
				+ "(3, '헬라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String selectQuery = "SELECT * FROM `real_estate`\n"
				+ "ORDER BY `id` DESC\n"
				+ "LIMIT 10;";
		
		try {
			ResultSet resultSet = mysqlService.select(selectQuery);
			while (resultSet.next()) {
				out.print("매물 주소 : " + resultSet.getString("address") + ", ");
				out.print("면적 : " + resultSet.getInt("area") + ", ");
				out.print("타입 : " + resultSet.getString("type"));
				out.println();
				
			}
			
			mysqlService.disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
