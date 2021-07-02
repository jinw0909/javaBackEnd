package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class ServletQuiz06 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String numberString1 = request.getParameter("number1");
		String numberString2 = request.getParameter("number2");
		
		int number1 = Integer.parseInt(numberString1);
		int number2 = Integer.parseInt(numberString2);
		
		String addition = "\"addition\":" + "\"" + (number1 + number2) + "\"";
		String subtraction = "\"subtraction\":" + "\"" + (number1 - number2) + "\"";
		String multiplication = "\"multiplication\":" + "\"" + (number1 * number2) + "\"";
		String division = "\"division\":" + "\"" + (number1 / number2) + "\"";
		
		
		out.println("{" + addition + "," + subtraction + "," + multiplication + "," + division + "}");
	}
}
