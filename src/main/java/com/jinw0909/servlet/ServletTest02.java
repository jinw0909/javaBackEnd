package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest02 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		// 날짜 출력 
		Date now = new Date();
		PrintWriter out = response.getWriter();
		SimpleDateFormat format = new SimpleDateFormat(":hh시 :mm분 :ss초");
		String formatDate = format.format(now);
		
		out.println("현재 시간은" + formatDate +"입니다.");
	}
}
