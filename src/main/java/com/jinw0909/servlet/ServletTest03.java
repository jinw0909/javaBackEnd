package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class ServletTest03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		String formatDate = format.format(now);
		
		
		out.println("<html> <head> <title> 뉴스 기사 출력 </title> </head>");
		out.println("<body> <h1> [단독] 고양이가 야옹해 </h1>");
		out.println("<small> 기사 입력시간 :" + formatDate + "<small> <hr>");
		out.println("끝 </body> </html>");
		
		
		
	}
}
