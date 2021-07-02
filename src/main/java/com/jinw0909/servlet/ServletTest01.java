package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		// 오늘 날짜 출력
		
		Date now = new Date();
		PrintWriter out = response.getWriter();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String formatDate = format.format(now);
		String[] dateArray = formatDate.split("-");

		out.println("오늘의 날짜는 " + dateArray[0]+ "년 " + (Integer.parseInt(dateArray[1]) % 10) + "월 " + dateArray[2] + "일");
		
		
		
		
	}
}
