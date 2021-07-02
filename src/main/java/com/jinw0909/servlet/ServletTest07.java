package com.jinw0909.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class ServletTest07 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");
		
		if (!address.contains("서울시")) {
			out.println("<html><head><title>배달 불가 지역</title></head>");
			out.println("<body>");
			out.println("<b>배달 불가 지역입니다.</b>");
			out.println("</body></html>");
		} else if (card.equals("신한카드")) {
			out.println("<html><head><title>결제 불가 카드</title></head>");
			out.println("<body>");
			out.println("<b>결제 불가 카드입니다.</b>");
			out.println("</body></html>");
		} else {
			out.println("<html><head><title>주문하기</title></head>");
			out.println("<body>");
			out.println("<b>" + address + " 배달 준비중</b>");
			out.println("<hr>");
			out.println("<p>결제금액 : " + price + "원</p>");
			out.println("</body></html>");
		}
		
	}
}
