package com.ict.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex09")
public class Ex09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//	같은 이름으로 여러개가 넘어오면 배열 처리
		String[] hobby = request.getParameterValues("hobby");
		String[] web = request.getParameterValues("web");
		
		//	배열이면 for 문
		out.println("<h2>취미</h2>");
		out.println("<h3><ul>");
		for (String k : hobby) {
			out.println("<li>" + k + "</li>");
		}
		out.println("</ul></h3>");
		
		out.println("<hr>");
		
		out.println("<h2>프로그래밍</h2>");
		out.println("<h3><ul>");
		for (String k : web) {
			out.println("<li>" + k + "</li>");
		}
		out.println("</ul></h3>");
		
	}

}
