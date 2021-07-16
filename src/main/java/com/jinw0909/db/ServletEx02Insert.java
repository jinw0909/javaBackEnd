package com.jinw0909.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jinw0909.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class ServletEx02Insert extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		//파라미터 저장
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();
		
		String query = "INSERT INTO `new_user`\n"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`, `createdAt`, `updatedAt`)\n"
				+ "VALUES\n"
				+ "('" + name + "', " + yyyymmdd +", '" + email +"', '"+ introduce +"', now(), now());";
		
		try {
			mysqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		
		// 다른 페이지로 이동하기
		// response를 통해서
		response.sendRedirect("/db/ex02.jsp");
		
	}

}
