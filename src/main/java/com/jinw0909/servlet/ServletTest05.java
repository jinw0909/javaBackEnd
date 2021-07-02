package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05 extends HttpServlet {
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String levelString = request.getParameter("level");
		
		int level = Integer.parseInt(levelString);
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>구구단 링크</title></head>");
		out.println("<body><ul>");
		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + level + " X " + i + " = " + level * i + "</li>");
		}
		out.println("</ul></body></html>");
	}
}
