package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex10_2")
public class Ex10_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//	모든 정보가 사라지고, 새롭게 만들어진다.
		//	파라미터값이 사라진다.

		String name = request.getParameter("userName");
		String age = request.getParameter("userAge");
		
		out.println("<h2>현재 Ex10_2 페이지입니다.</h2>");
		out.println("<h3><ul>");
		out.println("<li>" + name + "</li>");
		out.println("<li>" + age + "</li>");
		out.println("</ul></h3>");

		
		
		
		
	}


}
